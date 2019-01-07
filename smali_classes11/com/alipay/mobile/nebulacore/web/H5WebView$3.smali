.class Lcom/alipay/mobile/nebulacore/web/H5WebView$3;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->val$finalUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 642
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->val$finalUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;->val$jsCallback:Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 643
    return-void
.end method
