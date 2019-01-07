.class final Lecg$1;
.super Ljava/lang/Object;
.source "FullScreenVoiceRecordDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lecg;->a(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/PointF;

.field final synthetic b:Lecg;


# direct methods
.method constructor <init>(Lecg;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "this$0"    # Lecg;

    .prologue
    .line 231
    iput-object p1, p0, Lecg$1;->b:Lecg;

    iput-object p2, p0, Lecg$1;->a:Landroid/graphics/PointF;

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
    .line 234
    iget-object v0, p0, Lecg$1;->b:Lecg;

    invoke-static {v0}, Lecg;->a(Lecg;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lecg$1;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lecg$1;->b:Lecg;

    invoke-static {v2}, Lecg;->a(Lecg;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 235
    iget-object v0, p0, Lecg$1;->b:Lecg;

    invoke-static {v0}, Lecg;->a(Lecg;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lecg$1;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lecg$1;->b:Lecg;

    invoke-static {v2}, Lecg;->a(Lecg;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 236
    return-void
.end method
