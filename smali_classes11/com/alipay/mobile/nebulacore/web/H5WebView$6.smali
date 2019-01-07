.class Lcom/alipay/mobile/nebulacore/web/H5WebView$6;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic val$finalTime:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->val$finalTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->val$finalTime:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$200(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V

    .line 1053
    return-void
.end method
