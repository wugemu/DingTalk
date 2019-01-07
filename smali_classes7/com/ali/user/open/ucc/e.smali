.class public Lcom/ali/user/open/ucc/e;
.super Ljava/lang/Object;
.source "UccTrustLoginPresenter.java"


# static fields
.field private static volatile a:Lcom/ali/user/open/ucc/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ali/user/open/ucc/e;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/ali/user/open/ucc/e;->a:Lcom/ali/user/open/ucc/e;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/ali/user/open/ucc/e;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/ali/user/open/ucc/e;->a:Lcom/ali/user/open/ucc/e;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/ali/user/open/ucc/e;

    invoke-direct {v0}, Lcom/ali/user/open/ucc/e;-><init>()V

    sput-object v0, Lcom/ali/user/open/ucc/e;->a:Lcom/ali/user/open/ucc/e;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/ali/user/open/ucc/e;->a:Lcom/ali/user/open/ucc/e;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    const-class v0, Lcom/ali/user/open/oauth/OauthService;

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/oauth/OauthService;

    new-instance v5, Lcom/ali/user/open/ucc/e$1;

    invoke-direct {v5, p0, p6, p1}, Lcom/ali/user/open/ucc/e$1;-><init>(Lcom/ali/user/open/ucc/e;Lcom/ali/user/open/ucc/UccCallback;Landroid/app/Activity;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/open/oauth/OauthService;->tokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/OauthCallback;)V

    .line 50
    return-void
.end method
