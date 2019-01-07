.class public Libo;
.super Ljava/lang/Object;
.source "InvitationServiceImpl.java"

# interfaces
.implements Libn;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Libo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Libo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libo;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()Libo;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Libo;->b:Libo;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Libo;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Libo;->b:Libo;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Libo;

    invoke-direct {v0}, Libo;-><init>()V

    sput-object v0, Libo;->b:Libo;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Libo;->b:Libo;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "dest"    # I
    .param p3, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/invitation/InvitationObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/invitation/InvitationObject;>;"
    new-instance v0, Libo$1;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Libo$1;-><init>(Libo;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;IILjava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Libo$1;->start()V

    .line 49
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Libo;->a:Ljava/lang/String;

    const-string/jumbo v1, "getTaoPasswordModel with empty password"

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Libo$2;

    const/4 v3, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Libo$2;-><init>(Libo;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Libo$2;->start()V

    goto :goto_0
.end method
