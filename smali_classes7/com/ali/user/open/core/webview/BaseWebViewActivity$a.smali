.class Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/open/core/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/open/core/webview/BaseWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ali/user/open/core/util/CommonUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "member_sdk_network_not_available_message"

    invoke-static {v0}, Lcom/ali/user/open/core/util/CommonUtils;->toast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->resumeTimers()V

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    iget-object v1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/open/core/webview/MemberWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity$a;->a(Ljava/lang/Void;)V

    return-void
.end method
