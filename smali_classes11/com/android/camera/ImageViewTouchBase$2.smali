.class final Lcom/android/camera/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageViewTouchBase;->a(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/android/camera/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageViewTouchBase;FJFFFF)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ImageViewTouchBase;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/camera/ImageViewTouchBase$2;->g:Lcom/android/camera/ImageViewTouchBase;

    iput p2, p0, Lcom/android/camera/ImageViewTouchBase$2;->a:F

    iput-wide p3, p0, Lcom/android/camera/ImageViewTouchBase$2;->b:J

    iput p5, p0, Lcom/android/camera/ImageViewTouchBase$2;->c:F

    iput p6, p0, Lcom/android/camera/ImageViewTouchBase$2;->d:F

    iput p7, p0, Lcom/android/camera/ImageViewTouchBase$2;->e:F

    iput p8, p0, Lcom/android/camera/ImageViewTouchBase$2;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 329
    .local v2, "now":J
    iget v4, p0, Lcom/android/camera/ImageViewTouchBase$2;->a:F

    iget-wide v6, p0, Lcom/android/camera/ImageViewTouchBase$2;->b:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 330
    .local v0, "currentMs":F
    iget v4, p0, Lcom/android/camera/ImageViewTouchBase$2;->c:F

    iget v5, p0, Lcom/android/camera/ImageViewTouchBase$2;->d:F

    mul-float/2addr v5, v0

    add-float v1, v4, v5

    .line 331
    .local v1, "target":F
    iget-object v4, p0, Lcom/android/camera/ImageViewTouchBase$2;->g:Lcom/android/camera/ImageViewTouchBase;

    iget v5, p0, Lcom/android/camera/ImageViewTouchBase$2;->e:F

    iget v6, p0, Lcom/android/camera/ImageViewTouchBase$2;->f:F

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/camera/ImageViewTouchBase;->a(FFF)V

    .line 333
    iget v4, p0, Lcom/android/camera/ImageViewTouchBase$2;->a:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/android/camera/ImageViewTouchBase$2;->g:Lcom/android/camera/ImageViewTouchBase;

    iget-object v4, v4, Lcom/android/camera/ImageViewTouchBase;->h:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method
