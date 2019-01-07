.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->val$bitmap:Landroid/graphics/Bitmap;

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
    .line 1172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$900(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;->this$1:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->val$contentDesc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1175
    :cond_0
    return-void
.end method
