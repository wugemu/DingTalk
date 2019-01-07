.class final Lcom/android/camera/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liuz;

.field final synthetic b:Z

.field final synthetic c:Lcom/android/camera/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageViewTouchBase;Liuz;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ImageViewTouchBase;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/ImageViewTouchBase$1;->c:Lcom/android/camera/ImageViewTouchBase;

    iput-object p2, p0, Lcom/android/camera/ImageViewTouchBase$1;->a:Liuz;

    iput-boolean p3, p0, Lcom/android/camera/ImageViewTouchBase$1;->b:Z

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
    .line 160
    iget-object v0, p0, Lcom/android/camera/ImageViewTouchBase$1;->c:Lcom/android/camera/ImageViewTouchBase;

    iget-object v1, p0, Lcom/android/camera/ImageViewTouchBase$1;->a:Liuz;

    iget-boolean v2, p0, Lcom/android/camera/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageViewTouchBase;->a(Liuz;Z)V

    .line 161
    return-void
.end method
