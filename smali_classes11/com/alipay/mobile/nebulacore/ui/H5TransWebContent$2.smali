.class Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;
.super Ljava/lang/Object;
.source "H5TransWebContent.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

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
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "clicked"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/thirddisclaimerbar/H5ThirdDisclaimerUtils;->spmMonitor(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method
