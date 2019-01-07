.class public final Lidv;
.super Ljava/lang/Object;
.source "UserServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/UserService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lidv$b;,
        Lidv$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lidv;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/wukong/im/UserService;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lidv$a;->a:Lidv;

    return-object v0
.end method


# virtual methods
.method public final addUserExListener(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserExListenerAdapter;

    .prologue
    .line 920
    invoke-static {p1}, Lidt;->a(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V

    .line 921
    return-void
.end method

.method public final addUserListener(Lcom/alibaba/wukong/im/UserListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserListener;

    .prologue
    .line 910
    invoke-static {p1}, Lidt;->a(Lcom/alibaba/wukong/im/UserListener;)V

    .line 911
    return-void
.end method

.method public final fetchUsersRemark(Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 864
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/User;>;>;"
    const/4 v6, 0x0

    .line 866
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] UserServ"

    .line 31014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 867
    const-string/jumbo v0, "[API] fetch Alias start"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 869
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 31030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 896
    :goto_0
    return-void

    .line 871
    :cond_0
    :try_start_1
    new-instance v0, Lidv$7;

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lidv$7;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;)V

    .line 893
    invoke-virtual {v0}, Lidv$7;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 895
    :catchall_0
    move-exception v0

    .line 33030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 895
    throw v0
.end method

.method public final getUser(Lcom/alibaba/wukong/Callback;Ljava/lang/Long;)V
    .locals 9
    .param p2, "openId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 451
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    const/4 v8, 0x0

    .line 453
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] UserServ"

    .line 5014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 455
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 456
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid openId"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 501
    :goto_0
    return-void

    .line 460
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] getUser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 462
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 6030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 463
    :cond_2
    :try_start_2
    new-instance v0, Lidv$15;

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lidv$15;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/lang/Long;Lcom/alibaba/wukong/Callback;)V

    .line 498
    invoke-virtual {v0}, Lidv$15;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    .line 8030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 500
    throw v0
.end method

.method public final listUsers(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 513
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/User;>;>;"
    .local p2, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 515
    .local v10, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] UserServ"

    .line 9014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v10

    .line 517
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR openIds is empty"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 585
    :goto_0
    return-void

    .line 521
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] listUsers size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 523
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 10030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 525
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    .local v6, "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    new-instance v0, Lidv$2;

    new-instance v2, Liaf$a;

    invoke-direct {v2, p1}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lidv$2;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Ljava/util/List;Lcom/alibaba/wukong/Callback;Ljava/util/List;Ljava/util/List;)V

    .line 582
    invoke-virtual {v0}, Lidv$2;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 584
    .end local v6    # "openIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/user/UserImpl;>;"
    :catchall_0
    move-exception v0

    .line 12030
    invoke-static {v10}, Lhzt;->a(Lhzv;)V

    .line 584
    throw v0
.end method

.method public final removeUserExListener(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserExListenerAdapter;

    .prologue
    .line 925
    invoke-static {p1}, Lidt;->b(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V

    .line 926
    return-void
.end method

.method public final removeUserListener(Lcom/alibaba/wukong/im/UserListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/UserListener;

    .prologue
    .line 915
    invoke-static {p1}, Lidt;->b(Lcom/alibaba/wukong/im/UserListener;)V

    .line 916
    return-void
.end method

.method public final updateAlias(Lcom/alibaba/wukong/Callback;JLjava/lang/String;)V
    .locals 10
    .param p2, "openId"    # J
    .param p4, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    const/4 v0, 0x0

    .line 592
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] UserServ"

    .line 13014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 594
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    .line 595
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR unavailable openId"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] param err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 654
    :goto_0
    return-void

    .line 600
    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    .line 601
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR alias too long"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] param err alias too long len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 607
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] updateAlias "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 609
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 15030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 611
    :cond_2
    :try_start_3
    new-instance v1, Lidv$3;

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lidv$3;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 651
    invoke-virtual {v1}, Lidv$3;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v1

    .line 17030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 653
    throw v1
.end method

.method public final updateAvatar(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 8
    .param p2, "avatar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid avatar"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v7, Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-direct {v7}, Lcom/alibaba/wukong/idl/user/models/ProfileModel;-><init>()V

    .line 79
    .local v7, "model":Lcom/alibaba/wukong/idl/user/models/ProfileModel;
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    .line 81
    new-instance v0, Lidv$1;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lidv$1;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/user/models/ProfileModel;)V

    .line 122
    invoke-virtual {v0}, Lidv$1;->start()V

    goto :goto_0
.end method

.method public final updateExtension(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 258
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR param is null"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Lidv$11;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lidv$11;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 297
    invoke-virtual {v0}, Lidv$11;->start()V

    goto :goto_0
.end method

.method public final updateExtension(Lcom/alibaba/wukong/Callback;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 307
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid param"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Lidv$12;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lidv$12;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 347
    invoke-virtual {v0}, Lidv$12;->start()V

    goto :goto_0
.end method

.method public final updateMobile(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid mobile"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lidv$9;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lidv$9;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lidv$9;->start()V

    goto :goto_0
.end method

.method public final updateNickAndAvatar(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "avatar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 360
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR params are null"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lidv$13;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lidv$13;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lidv$13;->start()V

    goto :goto_0
.end method

.method public final updateNickname(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 6
    .param p2, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid nickname"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lidv$8;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lidv$8;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lidv$8;->start()V

    goto :goto_0
.end method

.method public final updateProfile(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/User$Gender;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "gender"    # Lcom/alibaba/wukong/im/User$Gender;
    .param p3, "birthday"    # Ljava/lang/Long;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "remark"    # Ljava/lang/String;
    .param p6, "city"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/alibaba/wukong/im/User$Gender;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 409
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Lidv$14;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lidv$14;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/User$Gender;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Lidv$14;->start()V

    goto :goto_0
.end method

.method public final updateRemark(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 7
    .param p2, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 214
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "[TAG] UserServ"

    .line 1014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "[API] param is empty"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid remark"

    invoke-static {p1, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 246
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_1
    const-string/jumbo v0, "[API] updateRemark"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 224
    :cond_1
    :try_start_2
    new-instance v0, Lidv$10;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lidv$10;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lidv$10;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    .line 4030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 245
    throw v0
.end method

.method public final updateRemarkExtension(Lcom/alibaba/wukong/Callback;JLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p2, "openId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    const/4 v2, 0x0

    .line 742
    .local v2, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v3, "[TAG] UserServ"

    .line 23014
    const-string/jumbo v4, "im"

    invoke-static {v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 744
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 745
    :cond_0
    const-string/jumbo v3, "101002"

    const-string/jumbo v4, "PARAMETER_ERR unavailable openId or key"

    invoke-static {p1, v3, v4}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[API] openId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 797
    :goto_0
    return-void

    .line 752
    :cond_1
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 24030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 754
    :cond_2
    :try_start_2
    new-instance v3, Lidv$5;

    const/4 v6, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lidv$5;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 794
    invoke-virtual {v3}, Lidv$5;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v3

    .line 26030
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 796
    throw v3
.end method

.method public final updateRemarkExtension(Lcom/alibaba/wukong/Callback;JLjava/util/Map;)V
    .locals 10
    .param p2, "openId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    .local p4, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 811
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] UserServ"

    .line 27014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 813
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    if-nez p4, :cond_1

    .line 814
    :cond_0
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR unavailable openId or extension"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] openId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extension="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 859
    :goto_0
    return-void

    .line 821
    :cond_1
    :try_start_1
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 28030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 823
    :cond_2
    :try_start_2
    new-instance v1, Lidv$6;

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lidv$6;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLjava/util/Map;)V

    .line 856
    invoke-virtual {v1}, Lidv$6;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v1

    .line 30030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 858
    throw v1
.end method

.method public final updateRemarkSound(Lcom/alibaba/wukong/Callback;JLjava/lang/String;)V
    .locals 10
    .param p2, "openId"    # J
    .param p4, "remarkSound"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    const/4 v0, 0x0

    .line 668
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] UserServ"

    .line 18014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 670
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    .line 671
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR unavailable openId"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] openId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 727
    :goto_0
    return-void

    .line 676
    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    .line 677
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR remarkSound too long"

    invoke-static {p1, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] remarkSound len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 684
    :cond_1
    :try_start_2
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 20030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 686
    :cond_2
    :try_start_3
    new-instance v1, Lidv$4;

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lidv$4;-><init>(Lidv;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 724
    invoke-virtual {v1}, Lidv$4;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v1

    .line 22030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 726
    throw v1
.end method

.method public final updateUsers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "mapOpenIdAndTag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {p1}, Lidr;->a(Ljava/util/Map;)V

    .line 906
    return-void
.end method
