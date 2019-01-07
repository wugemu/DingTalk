.class Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;
.super Ljava/lang/Object;
.source "H5NavigationBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


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
    .line 1162
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->this$0:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;->val$contentDesc:Ljava/lang/String;

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
    .line 1165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1166
    const-string/jumbo v2, "H5NavigationBar"

    const-string/jumbo v3, "setTitle image type offline"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    .line 1168
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1169
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$5;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1178
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_0
    return-void
.end method
