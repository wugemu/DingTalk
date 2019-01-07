.class public Libj;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/GroupNickService;


# static fields
.field private static volatile a:Libj;


# instance fields
.field private b:Libf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getGroupNickDataCenter()Libf;

    move-result-object v0

    iput-object v0, p0, Libj;->b:Libf;

    .line 45
    return-void
.end method

.method public static a()Lcom/alibaba/wukong/im/GroupNickService;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Libj;->a:Libj;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Libj;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Libj;->a:Libj;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Libj;

    invoke-direct {v0}, Libj;-><init>()V

    sput-object v0, Libj;->a:Libj;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Libj;->a:Libj;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Libj;)Libf;
    .locals 1
    .param p0, "x0"    # Libj;

    .prologue
    .line 37
    iget-object v0, p0, Libj;->b:Libf;

    return-object v0
.end method


# virtual methods
.method public addGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V
    .locals 1
    .param p1, "groupNickListener"    # Lcom/alibaba/wukong/im/GroupNickListener;

    .prologue
    .line 60
    invoke-static {}, Libh;->a()Libh;

    move-result-object v0

    invoke-virtual {v0, p1}, Libh;->a(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 61
    return-void
.end method

.method public getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Libj$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Libj$1;-><init>(Libj;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    .local p2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Libj$2;

    invoke-direct {v1, p0, p1, p2, p3}, Libj$2;-><init>(Libj;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "onlyFromCache"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Libj;->b:Libf;

    invoke-virtual {v0, p1, p2, p3, p4}, Libf;->a(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    return-object v0
.end method

.method public listGroupNicks(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    .local p2, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    const-string/jumbo v0, "error"

    const-string/jumbo v1, "params error"

    invoke-interface {p3, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v0

    new-instance v1, Libj$6;

    invoke-direct {v1, p0, p3}, Libj$6;-><init>(Libj;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, p1, p2, v1}, Liaw;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public removeGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Libj$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Libj$4;-><init>(Libj;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public removeGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V
    .locals 1
    .param p1, "groupNickListener"    # Lcom/alibaba/wukong/im/GroupNickListener;

    .prologue
    .line 65
    invoke-static {}, Libh;->a()Libh;

    move-result-object v0

    invoke-virtual {v0, p1}, Libh;->b(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 66
    return-void
.end method

.method public setConvertPinyinManager(Libd$a;)V
    .locals 0
    .param p1, "convertPinyinHelper"    # Libd$a;

    .prologue
    .line 70
    invoke-static {}, Libd;->a()Libd;

    invoke-static {p1}, Libd;->a(Libd$a;)V

    .line 71
    return-void
.end method

.method public updateGroupNick(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Libj$3;

    invoke-direct {v2, p0, p2}, Libj$3;-><init>(Libj;Lcom/alibaba/wukong/Callback;)V

    .line 2530
    invoke-static {v2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    new-instance v0, Liaw$24;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v4

    invoke-virtual {v4}, Liaq;->h()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Liaw$24;-><init>(Liaw;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    invoke-virtual {v0}, Liaw$24;->start()V

    goto :goto_0
.end method

.method public updateLocalGroupNicks(Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V
    .locals 2
    .param p3, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    .local p1, "groupNickObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Libj$5;

    invoke-direct {v1, p0, p1, p2, p3}, Libj$5;-><init>(Libj;Ljava/util/List;Lcom/alibaba/wukong/Callback;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
