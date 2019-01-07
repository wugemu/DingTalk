.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setOptionImage(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->val$index:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->val$bitmap:Landroid/graphics/Bitmap;

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
    .line 1127
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->val$index:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 1128
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBtIcon(Landroid/graphics/Bitmap;I)V

    .line 1129
    return-void
.end method
