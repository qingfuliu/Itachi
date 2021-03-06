/*
 * @Author: lqf
 * @page: www.Jackey.top
 * @Date: 2022-03-09 15:59:25
 * @LastEditors: lqf
 * @LastEditTime: 2022-03-10 20:43:53
 * @Description: 
 */
#include "adaptor.h"
#include "EventLoop.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include "channel.h"
#include "functional"
#include "definition.h"
#include "socket.h"
#include <sys/types.h>
namespace Itachi
{
    Aadaptor::Aadaptor(EventLoop *ownerLoop,
                       sockaddr_in *localaddr) : m_fd(socket(AF_INET,
                                                             SOCK_CLOEXEC |
                                                                 SOCK_STREAM |
                                                                 SOCK_NONBLOCK,
                                                             IPPROTO_TCP)),
                                                 m_listening(false),
                                                 m_ownerLoop(ownerLoop),
                                                 m_channel(new Channel(m_ownerLoop, m_fd)),
                                                 m_socket(new Socket(m_fd, nullptr, localaddr))
    {
        if (m_fd == -1)
        {
            LOG_FATAL << "Aadaptor failed";
        }
        m_socket->setReuseAddr(true);
        m_socket->setReusePort(true);
        // m_socket->setReuse(true);
        bind(m_fd, (const sockaddr *)localaddr, sizeof(sockaddr_in));
        m_channel->setReadCallback(
            std::bind(
                &Aadaptor::handleRead, this));
    }
    Aadaptor::~Aadaptor()
    {
        m_listening = false;
        if (m_channel)
        {
            delete m_channel;
        }
    }
    void Aadaptor::handleRead()
    {
        sockaddr_in *new_sockaddr = new sockaddr_in;
        socklen_t len;
        int new_fd = ::accept(m_fd, (sockaddr *)new_sockaddr, &len);
        if (new_fd == -1)
        {
            LOG_FATAL << "log fatal";
        }
        LOG_DEBUG << "new_fd is created: " << new_fd;
        m_readCallBack(new_fd, new_sockaddr);
    }
    void Aadaptor::listen()
    {
        assert(m_ownerLoop->isInLoopThread());
        if (!m_listening)
        {
            m_listening = true;
            if (-1 == ::listen(m_fd, 10000))
            {
                LOG_FATAL << "Aadaptor failed";
                return;
            }
            m_channel->enableRead();
        }
    }
    const sockaddr_in *Aadaptor::getLocalAddr()
    {
        return m_socket->getLocalAddr();
    }
}