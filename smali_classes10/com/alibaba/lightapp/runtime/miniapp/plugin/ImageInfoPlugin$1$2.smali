.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;
.super Ljava/lang/Object;
.source "ImageInfoPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetResponse(Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "webResourceResponse"    # Landroid/webkit/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 103
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;Landroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
