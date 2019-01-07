.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightCloseBtnClicked()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$800(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$800(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "clicked"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method
