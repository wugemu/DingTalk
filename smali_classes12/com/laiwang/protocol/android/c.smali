.class public Lcom/laiwang/protocol/android/c;
.super Ljava/lang/Object;
.source "RemoteAgent.java"

# interfaces
.implements Lcom/laiwang/protocol/android/a;


# instance fields
.field a:Lcom/laiwang/protocol/IAidlService;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/c;->b:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/c;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v1}, Lcom/laiwang/protocol/IAidlService;->logout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/IAidlService;)V
    .locals 4
    .param p1, "aidlService"    # Lcom/laiwang/protocol/IAidlService;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_0
    iput-object p1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    .line 139
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v1, "request":Landroid/os/Bundle;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/laiwang/protocol/IAidlService;->send(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "request":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    return-void
.end method

.method public a(Lcom/laiwang/protocol/ResetListener;)V
    .locals 0
    .param p1, "resetListener"    # Lcom/laiwang/protocol/ResetListener;

    .prologue
    .line 75
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 184
    return-void
.end method

.method public a(Lcom/laiwang/protocol/core/Request;)V
    .locals 6
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    :try_start_0
    sget-object v3, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v3}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 36
    const-string/jumbo v3, "mid"

    invoke-virtual {p1, v3}, Lcom/laiwang/protocol/core/Request;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v2

    .line 38
    .local v2, "messageID":Lcom/laiwang/protocol/core/MessageID;
    const-string/jumbo v3, "mid"

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 39
    invoke-virtual {p1, v2}, Lcom/laiwang/protocol/core/Request;->setMessageID(Lcom/laiwang/protocol/core/MessageID;)V

    .line 41
    .end local v2    # "messageID":Lcom/laiwang/protocol/core/MessageID;
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Lcom/laiwang/protocol/android/be;->a(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v3, :cond_2

    .line 45
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 52
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v3, v0}, Lcom/laiwang/protocol/IAidlService;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 3
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/Reply;

    .line 155
    .local v0, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-interface {v0, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v2

    .line 107
    .local v2, "messageID":Lcom/laiwang/protocol/core/MessageID;
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->d:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v3, v1, p1}, Lcom/laiwang/protocol/IAidlService;->tokenChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "messageID":Lcom/laiwang/protocol/core/MessageID;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v1}, Lcom/laiwang/protocol/IAidlService;->refreshCacheHeader()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 188
    return-void
.end method

.method public b(Lcom/laiwang/protocol/core/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    invoke-static {p1}, Lcom/laiwang/protocol/android/be;->a(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v2, v0}, Lcom/laiwang/protocol/IAidlService;->send(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v3, :cond_0

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v2

    .line 122
    .local v2, "messageID":Lcom/laiwang/protocol/core/MessageID;
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->d:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v3, v1, p1}, Lcom/laiwang/protocol/IAidlService;->deviceTokenChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "messageID":Lcom/laiwang/protocol/core/MessageID;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v1}, Lcom/laiwang/protocol/IAidlService;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Not supported remote mode"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V

    .line 210
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/c;->a:Lcom/laiwang/protocol/IAidlService;

    invoke-interface {v1}, Lcom/laiwang/protocol/IAidlService;->refreshCacheHeader()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method
