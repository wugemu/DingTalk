.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


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
    .line 1082
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 4
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1085
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1086
    const-string/jumbo v2, "H5NavigationBar"

    const-string/jumbo v3, "loadImageAsync from offline"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    .line 1088
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1089
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;->val$index:I

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->access$800(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/graphics/Bitmap;I)V

    .line 1093
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    return-void
.end method
