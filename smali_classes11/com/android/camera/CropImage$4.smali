.class final Lcom/android/camera/CropImage$4;
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
.field final synthetic a:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CropImage;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/CropImage$4;->a:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/CropImage$4;->a:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 223
    return-void
.end method
