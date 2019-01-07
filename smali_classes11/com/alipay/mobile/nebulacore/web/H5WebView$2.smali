.class Lcom/alipay/mobile/nebulacore/web/H5WebView$2;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->val$url:Ljava/lang/String;

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
    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 624
    return-void
.end method
