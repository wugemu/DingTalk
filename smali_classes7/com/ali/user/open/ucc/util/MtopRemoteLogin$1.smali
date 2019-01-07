.class final Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;
.super Ljava/lang/Object;
.source "MtopRemoteLogin.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/util/MtopRemoteLogin;->login(Lcom/ali/user/open/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/callback/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ali/user/open/callback/LoginCallback;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    invoke-interface {v0, p2, p3}, Lcom/ali/user/open/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/ali/user/open/ucc/util/MtopRemoteLogin$1;->a:Lcom/ali/user/open/callback/LoginCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/open/callback/LoginCallback;->onSuccess(Lcom/ali/user/open/session/Session;)V

    .line 21
    :cond_0
    return-void
.end method
