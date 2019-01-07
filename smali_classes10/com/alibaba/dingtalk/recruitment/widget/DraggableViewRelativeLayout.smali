.class public Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DraggableViewRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->b:I

    .line 59
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 64
    sget v0, Lgtt$d;->view_draggable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 70
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->e:I

    .line 71
    iput p2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->f:I

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->g:F

    sub-float v0, v2, v3

    .line 87
    .local v0, "offsetX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->h:F

    sub-float v1, v2, v3

    .line 89
    .local v1, "offsetY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->d:Z

    return v2

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->g:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->h:F

    .line 93
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->i:F

    .line 95
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->j:F

    .line 97
    :cond_1
    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->g:F

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->h:F

    .line 1126
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1130
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    .line 1131
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    .line 1132
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    add-float/2addr v6, v7

    .line 1133
    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    add-float/2addr v7, v8

    .line 1135
    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    cmpl-float v2, v3, v6

    if-ltz v2, :cond_2

    cmpg-float v2, v3, v7

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    .line 97
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->d:Z

    goto :goto_0

    .line 1135
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 100
    :pswitch_1
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->d:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1139
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->i:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1144
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->j:F

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 105
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->b:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->b:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 106
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->k:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;

    if-eqz v2, :cond_5

    .line 107
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->k:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;

    invoke-interface {v2}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;->a()V

    .line 114
    :cond_4
    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->g:F

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->h:F

    .line 116
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->i:F

    .line 118
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->j:F

    goto/16 :goto_0

    .line 109
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->performClick()Z

    goto :goto_2

    .line 111
    :cond_6
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->d:Z

    if-eqz v2, :cond_4

    .line 1148
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1152
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 1153
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 1156
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_9

    .line 1157
    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1163
    :goto_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    iget v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    .line 1164
    iget v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 1169
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    cmpl-float v7, v2, v3

    if-eqz v7, :cond_7

    .line 1172
    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v3, v9, v10

    const/4 v3, 0x1

    aput v2, v9, v3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1173
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1174
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1175
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_7
    cmpl-float v2, v4, v5

    if-eqz v2, :cond_8

    .line 1179
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x1

    aput v4, v7, v5

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1180
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1181
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1182
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1186
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1187
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1188
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 1158
    :cond_9
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->e:I

    iget v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    .line 1159
    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->e:I

    iget v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    goto/16 :goto_3

    .line 1165
    :cond_a
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    iget v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->f:I

    iget v7, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    .line 1166
    iget v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->f:I

    iget v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->c:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    goto/16 :goto_4

    :cond_b
    move v4, v5

    goto/16 :goto_4

    :cond_c
    move v2, v3

    goto/16 :goto_3

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->k:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;

    .line 76
    return-void
.end method
