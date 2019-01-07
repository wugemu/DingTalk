.class final Lhdx$2;
.super Lcom/uc/webview/export/WebViewClient;
.source "DrawerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdx;


# direct methods
.method constructor <init>(Lhdx;)V
    .locals 0
    .param p1, "this$0"    # Lhdx;

    .prologue
    .line 196
    iput-object p1, p0, Lhdx$2;->a:Lhdx;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lhdx$2;->a:Lhdx;

    .line 3034
    iget-object v0, v0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lhdx$2;->a:Lhdx;

    .line 4034
    iget-object v0, v0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 209
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->callbackInitStatus(ILorg/json/JSONObject;)V

    .line 211
    :cond_0
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v0, p0, Lhdx$2;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 200
    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lhdx$2;->a:Lhdx;

    .line 2034
    iget-object v0, v0, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 201
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->callbackInitStatus(ILorg/json/JSONObject;)V

    .line 203
    :cond_0
    return-void
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lhdx$2;->a:Lhdx;

    .line 5034
    iget-object v2, v2, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 216
    if-eqz v2, :cond_0

    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v1, "err":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v2, "failingUrl"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-object v2, p0, Lhdx$2;->a:Lhdx;

    .line 6034
    iget-object v2, v2, Lhdx;->k:Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 225
    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->callbackInitStatus(ILorg/json/JSONObject;)V

    .line 227
    .end local v1    # "err":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 222
    .restart local v1    # "err":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
