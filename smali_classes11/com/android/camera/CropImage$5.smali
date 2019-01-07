.class final Lcom/android/camera/CropImage$5;
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
    .line 343
    iput-object p1, p0, Lcom/android/camera/CropImage$5;->b:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/CropImage$5;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/CropImage$5;->b:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/CropImage$5;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    .line 346
    return-void
.end method
