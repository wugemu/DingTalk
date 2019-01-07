.class final Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;
.super Ljava/lang/Object;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/graphics/Paint;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->c:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    iput p2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    .line 291
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->c:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->c:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->c:Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 300
    return-void
.end method
