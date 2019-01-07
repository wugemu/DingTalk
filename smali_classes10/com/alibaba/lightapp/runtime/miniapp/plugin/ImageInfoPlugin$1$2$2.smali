.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;
.super Ljava/lang/Object;
.source "ImageInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->onGetResponse(Landroid/webkit/WebResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/BitmapFactory$Options;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->a:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->d:Liny;

    const/4 v1, 0x3

    const-string/jumbo v2, "url decode error"

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->d:Liny;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->a:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->a:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liny;IILjava/lang/String;)V

    goto :goto_0
.end method
