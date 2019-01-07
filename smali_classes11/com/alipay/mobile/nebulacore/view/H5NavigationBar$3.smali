.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->loadImageAsync(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1099
    if-eqz p1, :cond_0

    .line 1100
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "loadImageAsync from online"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;->val$index:I

    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$800(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;I)V

    .line 1103
    :cond_0
    return-void
.end method
