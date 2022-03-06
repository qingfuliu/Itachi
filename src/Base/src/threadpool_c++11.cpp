/*
 * @Author: lqf
 * @page: www.Jackey.top
 * @Date: 2022-03-05 23:53:15
 * @LastEditors: lqf
 * @LastEditTime: 2022-03-06 12:09:59
 * @Description: 
 */
#include "threadpool_c++11.h"
#include <mutex>
#include <condition_variable>
#include <thread>
#include <memory>
#include <atomic>
#include <functional>
namespace Itachi
{
    static thread_local std::thread::id _Current_thread__t_id = std::thread::id();
    static thread_local std::string _Current_thread__t_name = "main  thread";
    void ThreadPool::addTask(Task *task)
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        std::shared_ptr<Task> ptr(task);
        m_taskQueue.push(ptr);
        //    if(m_idelThreadCount)
        if (m_taskQueue.size() == 1)
        {
            m_condition_variable.notify_one();
        }
    }

    void ThreadPool::addTask(std::function<void *(void *)> cb, void *args, int8_t priority)
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        m_taskQueue.push(std::make_shared<Task>(cb, args, priority));
        if (m_idelThreadCount != 0)
        {
            m_condition_variable.notify_one();
        }
    }

    std::shared_ptr<Task> ThreadPool::takeTask()
    {
        if (!m_taskQueue.empty())
        {
            auto ptr = m_taskQueue.top();
            m_taskQueue.pop();
            return ptr;
        }
        return nullptr;
    }

    void ThreadPool::stop()
    {
        m_stop = true;
        m_condition_variable.notify_all();
    }

    void ThreadPool::start()
    {
        if (m_stop)
        {
            m_stop = false;
            for (int i = 0; i < m_threadMaxCount; ++i)
            {
                m_threads[i] = std::make_shared<Thread>(std::bind(&ThreadPool::execuate, this, m_name + " : " + std::to_string(i)), m_name + " : " + std::to_string(i));
            }
        }
    }

    void *ThreadPool::execuate(void *threadPool, const std::string &name)
    {
        ThreadPool *m_threadPool = static_cast<ThreadPool *>(threadPool);
        setCurrentThreadId(std::this_thread::get_id());
        setCurrentThreadName(name);
        while (true)
        {
            std::shared_ptr<Task> m_task = nullptr;
            {
                std::unique_lock<std::mutex> lock(m_threadPool->m_mutex); //
                while (m_threadPool->m_taskQueue.empty() && !m_threadPool->m_stop)
                {
                    ++m_threadPool->m_idelThreadCount;
                    m_threadPool->m_condition_variable.wait(lock);
                    --m_threadPool->m_idelThreadCount;
                }
                if (m_threadPool->m_taskQueue.empty() || m_threadPool->m_stop)
                    break;
                else
                {
                    m_task = m_threadPool->takeTask();
                }
            }
            if (m_task)
            {
                (*m_task)();
            }
        }
    }

    std::thread::id getCurrentThreadId()
    {
        return _Current_thread__t_id;
    }
    std::string getCurrentThreadName()
    {
        return _Current_thread__t_name;
    }

    void setCurrentThreadName(const std::string &name)
    {
        _Current_thread__t_name = name;
    }
    void setCurrentThreadId(const std::thread::id &id)
    {
        _Current_thread__t_id = id;
    }
}