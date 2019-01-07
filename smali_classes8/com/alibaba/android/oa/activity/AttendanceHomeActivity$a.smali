.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "direction"    # Z
    .param p4, "startSpeed"    # F
    .param p5, "endValue"    # F

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput-object p2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    .line 1400
    iput-boolean p3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->c:Z

    .line 1401
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->d:F

    .line 1402
    iput p5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    .line 1403
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1404
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->c:Z

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1418
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1419
    const/4 v1, 0x0

    .line 1420
    .local v1, "showStop":Z
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->d:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->d:F

    .line 1421
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1422
    .local v0, "posY":F
    iget-boolean v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->c:Z

    if-eqz v2, :cond_3

    .line 1423
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->d:F

    add-float/2addr v0, v2

    .line 1424
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 1425
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    .line 1426
    const/4 v1, 0x1

    .line 1435
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1436
    if-eqz v1, :cond_1

    .line 1437
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1439
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 1441
    .end local v0    # "posY":F
    .end local v1    # "showStop":Z
    :cond_2
    return-void

    .line 1429
    .restart local v0    # "posY":F
    .restart local v1    # "showStop":Z
    :cond_3
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->d:F

    sub-float/2addr v0, v2

    .line 1430
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 1431
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;->e:F

    .line 1432
    const/4 v1, 0x1

    goto :goto_0
.end method
