.class final Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;
.super Ljava/lang/Object;
.source "RuntimeEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;->invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->c:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v4, "callHandler"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->b:Lorg/json/JSONObject;

    const-string/jumbo v5, "api"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "apiName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->b:Lorg/json/JSONObject;

    const-string/jumbo v5, "jsonArgs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "jsonArgs":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->b:Lorg/json/JSONObject;

    const-string/jumbo v5, "callbackId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "callbackId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->c:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;->a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;->c:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;->a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->b(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    move-result-object v4

    .line 1071
    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v5, :cond_1

    .line 1072
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v4, v0, v3, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .end local v0    # "apiName":Ljava/lang/String;
    .end local v1    # "callbackId":Ljava/lang/String;
    .end local v3    # "jsonArgs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1074
    .restart local v0    # "apiName":Ljava/lang/String;
    .restart local v1    # "callbackId":Ljava/lang/String;
    .restart local v3    # "jsonArgs":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0    # "apiName":Ljava/lang/String;
    .end local v1    # "callbackId":Ljava/lang/String;
    .end local v3    # "jsonArgs":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
