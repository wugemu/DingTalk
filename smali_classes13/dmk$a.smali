.class final Ldmk$a;
.super Ljava/lang/Object;
.source "ChatSceneViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldmk;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ldmk;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Ldmk$a;->a:Ldmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-direct {p0}, Ldmk$a;->a()V

    .line 99
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmk$a;->b:Z

    .line 156
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    const/4 v1, 0x1

    .line 20034
    iput-boolean v1, v0, Ldmk;->n:Z

    .line 157
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 104
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 1326
    if-eqz p2, :cond_0

    iget-object v1, v0, Ldmk;->b:Ldmh$a;

    if-eqz v1, :cond_0

    .line 1327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 2034
    iget-boolean v0, v0, Ldmk;->n:Z

    .line 105
    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {v0, p2}, Ldmk;->a(Ldmk;Landroid/view/MotionEvent;)V

    .line 151
    :cond_1
    :goto_1
    return v6

    .line 1329
    :pswitch_1
    iget-object v1, v0, Ldmk;->b:Ldmh$a;

    invoke-interface {v1}, Ldmh$a;->u_()V

    .line 1330
    iput-boolean v6, v0, Ldmk;->m:Z

    goto :goto_0

    .line 1334
    :pswitch_2
    iget-object v1, v0, Ldmk;->b:Ldmh$a;

    invoke-interface {v1}, Ldmh$a;->v_()V

    .line 1335
    iput-boolean v4, v0, Ldmk;->m:Z

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 3034
    iget-boolean v0, v0, Ldmk;->e:Z

    .line 109
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldmk$a;->a:Ldmk;

    .line 4034
    iget-wide v2, v2, Ldmk;->k:J

    .line 109
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 110
    :cond_3
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 5034
    iput-boolean v4, v0, Ldmk;->n:Z

    .line 111
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {v0, p2}, Ldmk;->a(Ldmk;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 117
    :pswitch_3
    iput-boolean v6, p0, Ldmk$a;->c:Z

    .line 118
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6034
    iput-wide v2, v0, Ldmk;->l:J

    goto :goto_1

    .line 121
    :pswitch_4
    iget-boolean v0, p0, Ldmk$a;->b:Z

    if-nez v0, :cond_5

    .line 6164
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Ldmk$a;->a:Ldmk;

    .line 7034
    iget v1, v1, Ldmk;->g:I

    .line 6164
    rsub-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Ldmk$a;->a:Ldmk;

    .line 8034
    iget v2, v2, Ldmk;->g:I

    .line 6164
    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Ldmk$a;->a:Ldmk;

    .line 9034
    iget v4, v4, Ldmk;->g:I

    .line 6164
    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Ldmk$a;->a:Ldmk;

    .line 10034
    iget v5, v5, Ldmk;->g:I

    .line 6164
    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v2, v1

    add-double/2addr v2, v8

    double-to-int v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 11034
    iget-wide v0, v0, Ldmk;->l:J

    .line 123
    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldmk$a;->a:Ldmk;

    .line 12034
    iget-wide v2, v2, Ldmk;->l:J

    .line 123
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {v0}, Ldmk;->a(Ldmk;)V

    .line 125
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 13275
    iget-object v1, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    .line 13277
    iget v1, v0, Ldmk;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 13278
    iget v2, v0, Ldmk;->j:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 13281
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    .line 13282
    iget-object v3, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13283
    iget-object v3, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Ldmk$3;

    invoke-direct {v4, v0, v2, v1}, Ldmk$3;-><init>(Ldmk;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13308
    iget-object v1, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13309
    iget-object v1, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Ldmk;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 13310
    iget-object v0, v0, Ldmk;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 14160
    :cond_5
    iput-boolean v6, p0, Ldmk$a;->b:Z

    .line 129
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 15034
    invoke-virtual {v0}, Ldmk;->a()V

    goto/16 :goto_1

    .line 133
    :pswitch_5
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 16034
    iget-wide v0, v0, Ldmk;->l:J

    .line 133
    cmp-long v0, v0, v10

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldmk$a;->a:Ldmk;

    .line 17034
    iget-wide v2, v2, Ldmk;->l:J

    .line 133
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 17160
    iput-boolean v6, p0, Ldmk$a;->b:Z

    .line 136
    :cond_6
    iget-boolean v0, p0, Ldmk$a;->b:Z

    if-nez v0, :cond_7

    .line 137
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {v0}, Ldmk;->a(Ldmk;)V

    .line 138
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    invoke-static {v0}, Ldmk;->b(Ldmk;)V

    goto/16 :goto_1

    .line 141
    :cond_7
    invoke-direct {p0}, Ldmk$a;->a()V

    .line 142
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 18034
    invoke-virtual {v0}, Ldmk;->a()V

    .line 143
    iput-boolean v4, p0, Ldmk$a;->c:Z

    goto/16 :goto_1

    .line 146
    :pswitch_6
    invoke-direct {p0}, Ldmk$a;->a()V

    .line 147
    iget-object v0, p0, Ldmk$a;->a:Ldmk;

    .line 19034
    invoke-virtual {v0}, Ldmk;->a()V

    .line 148
    iput-boolean v4, p0, Ldmk$a;->c:Z

    goto/16 :goto_1

    .line 1327
    .line 115
    .line 13281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1388
    .end array-data
.end method
