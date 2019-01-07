.class public final Lhck;
.super Ljava/lang/Object;
.source "SwipeToDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhck$a;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Lhck$a;

.field private i:Landroid/view/MotionEvent;

.field private j:Landroid/view/GestureDetector;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhck$a;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lhck$a;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 34
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lhck;->h:Lhck$a;

    .line 35
    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iput v2, v0, Lhck;->e:F

    .line 36
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lhck;->b:I

    .line 37
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lhck;->i:Landroid/view/MotionEvent;

    .line 38
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lhck$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhck$1;-><init>(Lhck;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lhck;->j:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lhck;->a:Z

    .line 112
    iput-boolean v0, p0, Lhck;->f:Z

    .line 113
    iput-boolean v0, p0, Lhck;->g:Z

    .line 114
    return-void
.end method

.method private a(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lhck;->h:Lhck$a;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lhck;->h:Lhck$a;

    invoke-interface {v0, p1, p2}, Lhck$a;->a(FF)V

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic a(Lhck;)V
    .locals 1
    .param p0, "x0"    # Lhck;

    .prologue
    .line 13
    .line 2121
    iget-boolean v0, p0, Lhck;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhck;->f:Z

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 13
    :cond_0
    return-void
.end method

.method static synthetic b(Lhck;)V
    .locals 1
    .param p0, "x0"    # Lhck;

    .prologue
    .line 13
    .line 2129
    iget-boolean v0, p0, Lhck;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhck;->f:Z

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lhck;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    iput-boolean v0, p0, Lhck;->g:Z

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 54
    iput-object p1, p0, Lhck;->k:Landroid/view/View;

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v6, :cond_0

    iget-object v5, p0, Lhck;->h:Lhck$a;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhck;->h:Lhck$a;

    invoke-interface {v5}, Lhck$a;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    :cond_0
    iput-boolean v6, p0, Lhck;->a:Z

    move v3, v7

    .line 107
    .end local p2    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return v3

    .line 61
    .restart local p2    # "ev":Landroid/view/MotionEvent;
    :cond_1
    const/4 v3, 0x0

    .line 62
    .local v3, "handle":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 63
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_2
    :goto_1
    iget-object v5, p0, Lhck;->j:Landroid/view/GestureDetector;

    iget-boolean v6, p0, Lhck;->f:Z

    if-eqz v6, :cond_3

    iget-object p2, p0, Lhck;->i:Landroid/view/MotionEvent;

    .end local p2    # "ev":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 65
    .restart local p2    # "ev":Landroid/view/MotionEvent;
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lhck;->c:F

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lhck;->d:F

    .line 68
    invoke-direct {p0}, Lhck;->a()V

    .line 69
    const/4 v3, 0x1

    .line 70
    goto :goto_1

    .line 73
    :pswitch_1
    iget-boolean v5, p0, Lhck;->a:Z

    if-nez v5, :cond_2

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v8, p0, Lhck;->c:F

    sub-float v1, v5, v8

    .line 75
    .local v1, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v8, p0, Lhck;->d:F

    sub-float v2, v5, v8

    .line 76
    .local v2, "dy":F
    iget-boolean v5, p0, Lhck;->f:Z

    if-nez v5, :cond_4

    iget v5, p0, Lhck;->b:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    cmpl-float v5, v2, v1

    if-lez v5, :cond_5

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lhck;->g:Z

    if-nez v8, :cond_6

    move v8, v6

    :goto_3
    and-int/2addr v5, v8

    if-eqz v5, :cond_7

    :cond_4
    move v4, v6

    .line 77
    .local v4, "isMove":Z
    :goto_4
    if-eqz v4, :cond_2

    .line 78
    invoke-direct {p0, v1, v2}, Lhck;->a(FF)V

    .line 79
    const/4 v3, 0x1

    .line 80
    iput-boolean v6, p0, Lhck;->f:Z

    goto :goto_1

    .end local v4    # "isMove":Z
    :cond_5
    move v5, v7

    .line 76
    goto :goto_2

    :cond_6
    move v8, v7

    goto :goto_3

    :cond_7
    move v4, v7

    goto :goto_4

    .line 87
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :pswitch_2
    iget-boolean v5, p0, Lhck;->f:Z

    if-eqz v5, :cond_9

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lhck;->d:F

    sub-float v2, v5, v6

    .line 89
    .restart local v2    # "dy":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lhck;->e:F

    mul-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gez v5, :cond_a

    .line 90
    invoke-direct {p0, v8, v8}, Lhck;->a(FF)V

    .line 94
    :cond_8
    :goto_5
    const/4 v3, 0x1

    .line 97
    .end local v2    # "dy":F
    :cond_9
    invoke-direct {p0}, Lhck;->a()V

    goto/16 :goto_1

    .line 1143
    .restart local v2    # "dy":F
    :cond_a
    iget-object v5, p0, Lhck;->h:Lhck$a;

    if-eqz v5, :cond_8

    .line 1144
    iget-object v5, p0, Lhck;->h:Lhck$a;

    invoke-interface {v5}, Lhck$a;->a()V

    goto :goto_5

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
