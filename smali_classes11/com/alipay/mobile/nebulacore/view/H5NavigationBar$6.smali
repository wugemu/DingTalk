.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitle(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field final synthetic val$contentDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;->val$contentDesc:Ljava/lang/String;

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
    .line 1184
    if-eqz p1, :cond_0

    .line 1185
    const-string/jumbo v0, "H5NavigationBar"

    const-string/jumbo v1, "setTitle image type online"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$6;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1193
    :cond_0
    return-void
.end method
