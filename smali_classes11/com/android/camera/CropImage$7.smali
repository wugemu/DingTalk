.class final Lcom/android/camera/CropImage$7;
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
.field a:F

.field b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/CropImage$7;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage$7;->b:Landroid/graphics/Matrix;

    .line 491
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/CropImage$7;->a:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CropImage$7;->a:F

    .line 492
    iget-object v0, p0, Lcom/android/camera/CropImage$7;->c:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->g(Lcom/android/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CropImage$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CropImage$7$1;-><init>(Lcom/android/camera/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    return-void
.end method
