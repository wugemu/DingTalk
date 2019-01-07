.class public Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;
.super Ljava/lang/Object;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NajsCommunicator"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2294
    const-string/jumbo v0, "oa_account_"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2300
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2301
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oa_account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2303
    const-string/jumbo v0, ""

    .line 2307
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2316
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$NajsCommunicator;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2318
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oa_account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    :cond_0
    :goto_0
    return-void

    .line 2319
    :catch_0
    move-exception v0

    .line 2320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
