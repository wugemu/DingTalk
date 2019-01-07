.class final Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView$1;
.super Lhdq;
.source "JsapiPermissionWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView$1;->a:Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;

    invoke-direct {p0}, Lhdq;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView$1;->a:Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;->a(Lcom/alibaba/lightapp/runtime/permission/JsapiPermissionWebView;)V

    .line 44
    invoke-super {p0, p1, p2}, Lhdq;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
