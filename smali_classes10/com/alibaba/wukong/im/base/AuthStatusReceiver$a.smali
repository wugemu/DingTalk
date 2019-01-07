.class final Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;
.super Landroid/content/BroadcastReceiver;
.source "AuthStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/base/AuthStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/base/AuthStatusReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/base/AuthStatusReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/base/AuthStatusReceiver;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;->a:Lcom/alibaba/wukong/im/base/AuthStatusReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string/jumbo v0, "[TAG] Auth"

    const-string/jumbo v1, "[Auth] auth change reset"

    .line 4018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->m()Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {}, Libs;->a()V

    .line 47
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v2

    .line 4483
    const/4 v1, 0x0

    .line 4485
    :try_start_0
    iget-object v0, v2, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4486
    const-string/jumbo v0, "[TAG] ConvCache"

    .line 5014
    const-string/jumbo v3, "im"

    invoke-static {v0, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 4487
    const/4 v0, 0x0

    sput-boolean v0, Liar;->a:Z

    .line 4488
    const/4 v0, 0x0

    sput-boolean v0, Liar;->b:Z

    .line 4489
    sget-object v0, Liar;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4490
    sget-object v0, Liar;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4491
    sget-object v0, Liar;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4492
    const/4 v0, 0x0

    iput-boolean v0, v2, Liar;->e:Z

    .line 4493
    const-string/jumbo v0, "[CACHE] clear convs"

    invoke-virtual {v1, v0}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4495
    iget-object v0, v2, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 48
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v1

    .line 6049
    :try_start_1
    iget-object v0, v1, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6050
    iget-object v0, v1, Lidq;->a:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 6051
    iget-object v0, v1, Lidq;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6053
    :cond_0
    iget-object v0, v1, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getGroupNickDataCenter()Libf;

    move-result-object v0

    invoke-virtual {v0}, Libf;->a()V

    .line 50
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getCategoryCache()Liaj;

    move-result-object v0

    .line 6232
    iput-boolean v4, v0, Liaj;->c:Z

    .line 6233
    iget-object v1, v0, Liaj;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6234
    iget-object v0, v0, Liaj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6235
    const-string/jumbo v0, "[TAG] CategoryCache"

    const-string/jumbo v1, "[CACHE] clear CategoryCache"

    .line 7018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Liby;->a()Liby;

    move-result-object v0

    invoke-virtual {v0}, Liby;->c()V

    .line 53
    invoke-static {}, Licb;->a()Licb;

    move-result-object v0

    invoke-virtual {v0}, Licb;->c()V

    .line 55
    invoke-static {}, Libp;->a()V

    .line 56
    return-void

    .line 4495
    :catchall_0
    move-exception v0

    iget-object v2, v2, Liar;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 4496
    throw v0

    .line 6053
    :catchall_1
    move-exception v0

    iget-object v1, v1, Lidq;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3059
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v1

    new-instance v2, Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a$1;

    invoke-direct {v2, p0}, Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a$1;-><init>(Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;)V

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;->a()V

    .line 41
    :cond_1
    return-void

    .line 37
    :cond_2
    const-string/jumbo v1, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.alibaba.wukong.auth.KICKOUT"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method
