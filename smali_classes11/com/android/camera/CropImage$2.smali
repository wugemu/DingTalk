.class final Lcom/android/camera/CropImage$2;
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
    .line 127
    iput-object p1, p0, Lcom/android/camera/CropImage$2;->a:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/CropImage$2;->a:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->a(Lcom/android/camera/CropImage;)V

    .line 130
    return-void
.end method
