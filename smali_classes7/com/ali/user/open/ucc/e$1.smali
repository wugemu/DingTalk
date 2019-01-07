.class Lcom/ali/user/open/ucc/e$1;
.super Ljava/lang/Object;
.source "UccTrustLoginPresenter.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/ali/user/open/ucc/e;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/e;Lcom/ali/user/open/ucc/UccCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ali/user/open/ucc/e$1;->c:Lcom/ali/user/open/ucc/e;

    iput-object p2, p0, Lcom/ali/user/open/ucc/e$1;->a:Lcom/ali/user/open/ucc/UccCallback;

    iput-object p3, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->a:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->a:Lcom/ali/user/open/ucc/UccCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 48
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->a:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->a:Lcom/ali/user/open/ucc/UccCallback;

    invoke-interface {v0, p1, p2}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/ali/user/open/ucc/e$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    :cond_1
    return-void
.end method
