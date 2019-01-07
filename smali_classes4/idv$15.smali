.class final Lidv$15;
.super Liaa;
.source "UserServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidv;->getUser(Lcom/alibaba/wukong/Callback;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Lcom/alibaba/wukong/im/user/UserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lidv;


# direct methods
.method constructor <init>(Lidv;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/lang/Long;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lidv;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Lcom/alibaba/wukong/WKExecutor;
    .param p5, "x3"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 463
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/user/UserImpl;>;"
    iput-object p1, p0, Lidv$15;->c:Lidv;

    iput-object p6, p0, Lidv$15;->a:Ljava/lang/Long;

    iput-object p7, p0, Lidv$15;->b:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4, p5}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    return-void
.end method


# virtual methods
.method public final onAfterRpc(Liaa$b;)Liaa$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">.b;)",
            "Liaa",
            "<",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/im/user/UserImpl;",
            ">.b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 492
    .local p1, "rpcResult":Liaa$b;, "Liaa<Ljava/lang/Void;Lcom/alibaba/wukong/im/user/UserImpl;>.b;"
    iget-boolean v0, p1, Liaa$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v1

    iget-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-virtual {v1, v0}, Lidq;->a(Lcom/alibaba/wukong/im/user/UserImpl;)Z

    .line 494
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    iget-object v1, p0, Lidv$15;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    iput-object v0, p1, Liaa$b;->d:Ljava/lang/Object;

    .line 496
    :cond_0
    return-object p1
.end method

.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 463
    .line 1466
    const/4 v1, 0x0

    .line 1468
    :try_start_0
    const-string/jumbo v0, "[TAG] UserServ"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 1469
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserCache()Lidq;

    move-result-object v0

    iget-object v2, p0, Lidv$15;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lidq;->a(J)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    .line 1471
    sget-boolean v2, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    if-nez v2, :cond_0

    .line 1473
    const-string/jumbo v2, "[API] get local without profile"

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 1474
    iget-object v2, p0, Lidv$15;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3030
    :goto_0
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1488
    return-void

    .line 1476
    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->version()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 1478
    const-string/jumbo v2, "[API] get local with profile"

    invoke-virtual {v1, v2}, Lhzv;->a(Ljava/lang/String;)V

    .line 1479
    iget-object v2, p0, Lidv$15;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v2, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1487
    :catchall_0
    move-exception v0

    .line 4030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1487
    throw v0

    .line 1482
    :cond_1
    :try_start_2
    const-string/jumbo v0, "[API] rpc get"

    invoke-virtual {v1, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1483
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v0

    iget-object v2, p0, Lidv$15;->a:Ljava/lang/Long;

    .line 2035
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 2036
    const-string/jumbo v0, "101002"

    const-string/jumbo v2, "101002openId is invalid"

    invoke-interface {p2, v0, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2041
    :cond_2
    new-instance v3, Lidu$1;

    invoke-direct {v3, v0, p2}, Lidu$1;-><init>(Lidu;Lcom/alibaba/wukong/Callback;)V

    .line 2051
    const-string/jumbo v0, "[TAG] UserRpc"

    const-string/jumbo v4, "[RPC] getProfile by OpenId"

    invoke-virtual {v3}, Lhzy;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const-class v0, Lcom/alibaba/wukong/idl/user/client/UserIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/user/client/UserIService;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/idl/user/client/UserIService;->getUserProfileByOpenId(Ljava/lang/Long;Liyv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
