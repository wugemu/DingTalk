.class public Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;
.super Landroid/widget/FrameLayout;
.source "FloatLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public c:Lheg;

.field public d:Landroid/content/Context;

.field private final e:Landroid/view/WindowManager;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Ljava/math/BigDecimal;

.field private n:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

.field private o:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    .line 76
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->e:Landroid/view/WindowManager;

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lhdn$i;->window_floatinglayer_layout:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    sget v2, Lhdn$h;->imageview:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a:Landroid/widget/ImageView;

    .line 81
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v2

    .line 1160
    iget-object v1, v2, Lheh;->d:Ljava/lang/String;

    .line 82
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lhrj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    sget v2, Lhdn$h;->floating_layer_text:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b:Landroid/widget/TextView;

    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v3

    .line 1164
    iget-object v3, v3, Lheh;->e:Ljava/lang/String;

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    invoke-static {v2}, Lhcn;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->g:I

    .line 89
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    invoke-static {v2}, Lhcn;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->h:I

    .line 91
    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->e:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->n:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->o:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 126
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    :goto_0
    move v0, v12

    .line 188
    :goto_1
    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->i:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->j:F

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->k:F

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->l:F

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->m:Ljava/math/BigDecimal;

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->i:F

    sub-float v7, v1, v2

    .line 137
    .local v7, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->j:F

    sub-float v8, v1, v2

    .line 138
    .local v8, "deltaY":F
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->i:F

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->j:F

    .line 143
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->g:I

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 148
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->g:I

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->h:I

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->h:I

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 160
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 161
    :catch_0
    move-exception v9

    .line 162
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    .end local v7    # "deltaX":F
    .end local v8    # "deltaY":F
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->k:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    move v10, v12

    .line 172
    .local v10, "isClick":Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v11

    .line 173
    .local v11, "now":Ljava/math/BigDecimal;
    if-eqz v10, :cond_6

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->m:Ljava/math/BigDecimal;

    invoke-virtual {v11, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 174
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->c:Lheg;

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->c:Lheg;

    invoke-interface {v1}, Lheg;->onClick()V

    .line 1209
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1210
    const-string/jumbo v2, "FLOAT_CLICK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .end local v10    # "isClick":Z
    .end local v11    # "now":Ljava/math/BigDecimal;
    :cond_5
    move v10, v0

    .line 171
    goto :goto_2

    .line 181
    .restart local v10    # "isClick":Z
    .restart local v11    # "now":Ljava/math/BigDecimal;
    :cond_6
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->o:Ljava/util/Timer;

    .line 182
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;-><init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->n:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->o:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->n:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f:Landroid/view/WindowManager$LayoutParams;

    .line 221
    return-void
.end method
