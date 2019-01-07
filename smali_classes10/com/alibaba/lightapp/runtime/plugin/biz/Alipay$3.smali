.class Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;
.super Ljava/lang/Object;
.source "Alipay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->mWebview:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->mWebview:Landroid/webkit/WebView;

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 178
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
