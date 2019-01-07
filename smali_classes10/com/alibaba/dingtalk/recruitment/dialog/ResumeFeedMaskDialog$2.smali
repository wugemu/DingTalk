.class final Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;
.super Ljava/lang/Object;
.source "ResumeFeedMaskDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2$1;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;->a:Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
