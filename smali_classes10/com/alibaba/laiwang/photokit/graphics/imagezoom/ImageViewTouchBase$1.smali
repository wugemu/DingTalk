.class final Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Z

.field final synthetic c:Landroid/graphics/Matrix;

.field final synthetic d:F

.field final synthetic e:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->e:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->b:Z

    iput-object p4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->c:Landroid/graphics/Matrix;

    iput p5, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->d:F

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
    .line 216
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->e:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->b:Z

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->c:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase$1;->d:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 217
    return-void
.end method
