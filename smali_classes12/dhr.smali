.class public Ldhr;
.super Ljava/lang/Object;
.source "LeaveCacheClearManager.java"


# static fields
.field public static volatile a:Ldhr;


# instance fields
.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldhr;->c:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldhr;->b:Ljava/util/LinkedList;

    .line 36
    return-void
.end method

.method public static a()Ldhr;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Ldhr;->a:Ldhr;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Ldhr;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Ldhr;->a:Ldhr;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldhr;

    invoke-direct {v0}, Ldhr;-><init>()V

    sput-object v0, Ldhr;->a:Ldhr;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Ldhr;->a:Ldhr;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldhr;)V
    .locals 0
    .param p0, "x0"    # Ldhr;

    .prologue
    .line 23
    invoke-virtual {p0}, Ldhr;->b()V

    return-void
.end method

.method static synthetic a(Ldhr;Z)Z
    .locals 1
    .param p0, "x0"    # Ldhr;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldhr;->d:Z

    return v0
.end method


# virtual methods
.method public b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v4, p0, Ldhr;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 66
    :try_start_0
    iget-boolean v3, p0, Ldhr;->d:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Ldhr;->b:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ldhr;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 67
    iget-object v3, p0, Ldhr;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    .line 69
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 70
    .local v0, "currentTime":J
    if-eqz v2, :cond_1

    iget-wide v6, p0, Ldhr;->e:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 71
    const-string/jumbo v3, "Leave"

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "leavecache start="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Ldhr;->d:Z

    .line 73
    iput-wide v0, p0, Ldhr;->e:J

    .line 1085
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1086
    const-wide/16 v6, 0x0

    invoke-interface {v3, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 1087
    const-string/jumbo v5, "Leave"

    const/4 v6, 0x0

    const-string/jumbo v7, "leavecache remove image cache"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v5, "clear_cache"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Ldhr$1;

    invoke-direct {v6, p0, v3}, Ldhr$1;-><init>(Ldhr;Lcom/alibaba/doraemon/image/ImageMagician;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 81
    .end local v0    # "currentTime":J
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 76
    .restart local v0    # "currentTime":J
    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const-string/jumbo v5, "Leave"

    const/4 v6, 0x0

    const/4 v3, 0x4

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "leavecache discard diff"

    aput-object v8, v7, v3

    const/4 v3, 0x1

    iget-wide v8, p0, Ldhr;->e:J

    sub-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    const-string/jumbo v8, " cid:"

    aput-object v8, v7, v3

    const/4 v8, 0x3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ldhr;->b()V

    goto :goto_0

    .line 81
    .end local v0    # "currentTime":J
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 76
    .restart local v0    # "currentTime":J
    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
