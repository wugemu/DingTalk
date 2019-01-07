.class public final Lhli;
.super Ljava/lang/Object;
.source "UICLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhli$a;
    }
.end annotation


# static fields
.field private static b:Lhli;


# instance fields
.field public a:Lhlj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lhlj;

    invoke-direct {v0}, Lhlj;-><init>()V

    iput-object v0, p0, Lhli;->a:Lhlj;

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Lhli;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lhli;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhli;->b:Lhli;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lhli;

    invoke-direct {v0}, Lhli;-><init>()V

    sput-object v0, Lhli;->b:Lhli;

    .line 39
    :cond_0
    sget-object v0, Lhli;->b:Lhli;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V
    .locals 2
    .param p1, "loginParam"    # Lcom/ali/user/enterprise/base/data/LoginParam;
    .param p2, "loginCallback"    # Lcom/ali/user/enterprise/login/MultiLoginCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lhli;->a:Lhlj;

    .line 2064
    const-string/jumbo v0, "android_uic_disable_login"

    invoke-static {v0}, Lhlj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "refreshSession"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p1, p2}, Lcom/ali/user/enterprise/Login;->multiLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final a(Lhli$a;)V
    .locals 2
    .param p1, "callback"    # Lhli$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lhli;->a:Lhlj;

    .line 1064
    const-string/jumbo v0, "android_uic_disable_login"

    invoke-static {v0}, Lhlj;->a(Ljava/lang/String;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string/jumbo v0, "refreshSession"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Lhli$1;

    invoke-direct {v0, p0, p1}, Lhli$1;-><init>(Lhli;Lhli$a;)V

    invoke-static {v0}, Lcom/ali/user/enterprise/Login;->dingLogin(Lcom/ali/user/enterprise/login/LoginCallback;)V

    .line 98
    :cond_0
    return-void
.end method
