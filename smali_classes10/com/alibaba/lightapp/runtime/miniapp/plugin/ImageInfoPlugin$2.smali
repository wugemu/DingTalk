.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;
.super Ljava/lang/Object;
.source "ImageInfoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/BitmapFactory$Options;

.field final synthetic b:Liny;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Landroid/graphics/BitmapFactory$Options;Liny;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->a:Landroid/graphics/BitmapFactory$Options;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->b:Liny;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->c:Ljava/lang/String;

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
    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->a:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->b:Liny;

    const/4 v1, 0x3

    const-string/jumbo v2, "url decode error"

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->b:Liny;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->a:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->a:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ImageInfoPlugin;Liny;IILjava/lang/String;)V

    goto :goto_0
.end method
