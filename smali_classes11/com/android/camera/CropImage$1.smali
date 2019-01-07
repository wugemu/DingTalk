.class final Lcom/android/camera/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
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
    .line 119
    iput-object p1, p0, Lcom/android/camera/CropImage$1;->a:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->a:Lcom/android/camera/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CropImage;->setResult(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/CropImage$1;->a:Lcom/android/camera/CropImage;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->finish()V

    .line 123
    return-void
.end method
