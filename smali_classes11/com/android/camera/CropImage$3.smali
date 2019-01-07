.class final Lcom/android/camera/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/CropImage$3;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CropImage$3;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CropImage$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/CropImage$3;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->a(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/CropImageView;->a(ZZ)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CropImage$3;->b:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 208
    return-void
.end method
