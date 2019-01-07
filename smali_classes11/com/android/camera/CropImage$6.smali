.class final Lcom/android/camera/CropImage$6;
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
    .line 423
    iput-object p1, p0, Lcom/android/camera/CropImage$6;->b:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/camera/CropImage$6;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->a()V

    .line 426
    iget-object v0, p0, Lcom/android/camera/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    return-void
.end method
