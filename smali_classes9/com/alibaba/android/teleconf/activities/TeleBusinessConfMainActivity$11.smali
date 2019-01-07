.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    const/4 v0, 0x0

    .line 422
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->c:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->a:F

    .line 424
    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->b:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 430
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->b:F

    iput v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->a:F

    goto :goto_0

    .line 433
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 434
    .local v1, "tempY":F
    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->a:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 435
    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->b:F

    .line 436
    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->b:F

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->a:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 437
    .local v0, "beDown":Z
    :goto_1
    if-nez v0, :cond_0

    .line 438
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->c:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->c:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    move-result-object v3

    .line 2178
    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    .line 438
    if-eqz v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$11;->c:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b()V

    goto :goto_0

    .end local v0    # "beDown":Z
    :cond_1
    move v0, v2

    .line 436
    goto :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
