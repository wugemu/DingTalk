.class public Lin/srain/cube/views/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrFrameLayout$a;,
        Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static b:I

.field public static c:Z

.field private static m:B

.field private static n:B

.field private static o:B

.field private static p:B

.field private static q:B


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Landroid/view/MotionEvent;

.field private F:Z

.field private a:B

.field protected final d:Ljava/lang/String;

.field protected e:Landroid/view/View;

.field f:Z

.field public g:Z

.field public h:Lkfa;

.field public i:I

.field public j:J

.field k:Lkfe;

.field public l:Ljava/lang/Runnable;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Landroid/view/View;

.field private x:Lkez;

.field private y:Lkex;

.field private z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Z

    .line 27
    sput v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:I

    .line 30
    sput-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:B

    .line 31
    const/4 v0, 0x2

    sput-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:B

    .line 32
    const/4 v0, 0x4

    sput-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:B

    .line 33
    const/16 v0, 0x8

    sput-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:B

    .line 34
    const/4 v0, 0x3

    sput-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-byte v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ptr-frame-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Ljava/lang/String;

    .line 37
    iput v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    .line 38
    iput v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:I

    .line 40
    const/16 v3, 0xc8

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    .line 41
    const/16 v3, 0x3e8

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    .line 42
    iput-boolean v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Z

    .line 43
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 1060
    new-instance v3, Lkez;

    invoke-direct {v3}, Lkez;-><init>()V

    .line 45
    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    .line 51
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:Z

    .line 52
    iput v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 55
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 61
    const/16 v3, 0x1f4

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:I

    .line 62
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:J

    .line 64
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    .line 65
    new-instance v3, Lin/srain/cube/views/ptr/PtrFrameLayout$1;

    invoke-direct {v3, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$1;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:Ljava/lang/Runnable;

    .line 83
    new-instance v3, Lkfe;

    invoke-direct {v3}, Lkfe;-><init>()V

    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 85
    sget-object v3, Lkfb$d;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "arr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 88
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_header:I

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    .line 89
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_content:I

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:I

    .line 91
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    sget v4, Lkfb$d;->PtrFrameLayout_ptr_resistance:I

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 2029
    iget v5, v5, Lkfe;->j:F

    .line 91
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 2033
    iput v4, v3, Lkfe;->j:F

    .line 94
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_duration_to_close:I

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    .line 95
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_duration_to_close_header:I

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    .line 97
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 2058
    iget v2, v3, Lkfe;->i:F

    .line 98
    .local v2, "ratio":F
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 99
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v3, v2}, Lkfe;->a(F)V

    .line 101
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_keep_header_when_refresh:I

    iget-boolean v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Z

    .line 103
    sget v3, Lkfb$d;->PtrFrameLayout_ptr_pull_to_fresh:I

    iget-boolean v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    .end local v2    # "ratio":F
    :cond_0
    new-instance v3, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-direct {v3, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    .line 109
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 110
    .local v1, "conf":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:I

    .line 111
    return-void
.end method

.method private a(F)V
    .locals 13
    .param p1, "deltaY"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 349
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 10101
    iget v0, v0, Lkfe;->e:I

    .line 356
    float-to-int v1, p1

    add-int v9, v0, v1

    .line 10195
    .local v9, "to":I
    if-gez v9, :cond_c

    move v0, v10

    .line 359
    :goto_1
    if-eqz v0, :cond_2

    .line 363
    const/4 v9, 0x0

    .line 366
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 11108
    iget v1, v0, Lkfe;->e:I

    iput v1, v0, Lkfe;->f:I

    .line 11109
    iput v9, v0, Lkfe;->e:I

    .line 367
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 12097
    iget v0, v0, Lkfe;->f:I

    .line 367
    sub-int v8, v9, v0

    .line 12372
    .local v8, "change":I
    if-eqz v8, :cond_0

    .line 12376
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 13025
    iget-boolean v11, v0, Lkfe;->k:Z

    .line 12379
    if-eqz v11, :cond_3

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12380
    iput-boolean v10, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    .line 12381
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()V

    .line 12385
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 13141
    iget v1, v0, Lkfe;->f:I

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lkfe;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v10

    .line 12385
    :goto_2
    if-eqz v0, :cond_4

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    if-eq v0, v10, :cond_5

    :cond_4
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 14045
    iget v1, v0, Lkfe;->e:I

    iget v0, v0, Lkfe;->m:I

    if-lt v1, v0, :cond_e

    move v0, v10

    .line 12385
    :goto_3
    if-eqz v0, :cond_6

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 14706
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:B

    and-int/2addr v0, v1

    if-lez v0, :cond_f

    move v0, v10

    .line 12385
    :goto_4
    if-eqz v0, :cond_6

    .line 12388
    :cond_5
    iput-byte v12, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    .line 12389
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0, p0}, Lkez;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 12396
    :cond_6
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 15145
    iget v1, v0, Lkfe;->f:I

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lkfe;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v10

    .line 12396
    :goto_5
    if-eqz v0, :cond_7

    .line 12397
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    .line 12400
    if-eqz v11, :cond_7

    .line 15929
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Landroid/view/MotionEvent;

    .line 15930
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 16265
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12406
    :cond_7
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    if-ne v0, v12, :cond_a

    .line 12408
    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 17161
    iget v1, v0, Lkfe;->f:I

    invoke-virtual {v0}, Lkfe;->a()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget v1, v0, Lkfe;->e:I

    invoke-virtual {v0}, Lkfe;->a()I

    move-result v0

    if-lt v1, v0, :cond_11

    move v0, v10

    .line 12408
    :goto_6
    if-eqz v0, :cond_8

    .line 12410
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->d()Z

    .line 17702
    :cond_8
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:B

    and-int/2addr v0, v1

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:B

    if-ne v0, v1, :cond_12

    move v0, v10

    .line 12413
    :goto_7
    if-eqz v0, :cond_a

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 18165
    iget v1, v0, Lkfe;->f:I

    iget v2, v0, Lkfe;->g:I

    if-ge v1, v2, :cond_9

    iget v1, v0, Lkfe;->e:I

    iget v0, v0, Lkfe;->g:I

    if-lt v1, v0, :cond_9

    move v4, v10

    .line 12413
    :cond_9
    if-eqz v4, :cond_a

    .line 12414
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->d()Z

    .line 12423
    :cond_a
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 12424
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->f()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12425
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 12427
    :cond_b
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->invalidate()V

    .line 12429
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0}, Lkez;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12430
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    iget-byte v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0, p0, v11, v1, v2}, Lkez;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLkfe;)V

    goto/16 :goto_0

    .end local v8    # "change":I
    :cond_c
    move v0, v4

    .line 10195
    goto/16 :goto_1

    .restart local v8    # "change":I
    :cond_d
    move v0, v4

    .line 13141
    goto/16 :goto_2

    :cond_e
    move v0, v4

    .line 14045
    goto/16 :goto_3

    :cond_f
    move v0, v4

    .line 14706
    goto/16 :goto_4

    :cond_10
    move v0, v4

    .line 15145
    goto/16 :goto_5

    :cond_11
    move v0, v4

    .line 17161
    goto :goto_6

    :cond_12
    move v0, v4

    .line 17702
    goto :goto_7
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 17
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V
    .locals 0
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p1, "x1"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lkfe;
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 17
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .param p1, "ignoreHook"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 643
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:Lkfa;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:Lkfa;

    .line 21024
    iget-byte v1, v0, Lkfa;->b:B

    packed-switch v1, :pswitch_data_0

    .line 21030
    :goto_0
    :pswitch_0
    return-void

    .line 21026
    :pswitch_1
    const/4 v1, 0x1

    iput-byte v1, v0, Lkfa;->b:B

    .line 21027
    invoke-virtual {v0}, Lkfa;->run()V

    goto :goto_0

    .line 21032
    :pswitch_2
    invoke-virtual {v0}, Lkfa;->a()V

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0}, Lkez;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0, p0}, Lkez;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 657
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 21041
    iget v1, v0, Lkfe;->e:I

    iput v1, v0, Lkfe;->m:I

    .line 21507
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c()V

    .line 659
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->e()Z

    goto :goto_0

    .line 21024
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 491
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 20025
    iget-boolean v0, v0, Lkfe;->k:Z

    .line 491
    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, 0x0

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(II)V

    .line 494
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 20149
    iget v2, v0, Lkfe;->e:I

    invoke-virtual {v0}, Lkfe;->a()I

    move-result v0

    if-lt v2, v0, :cond_5

    const/4 v0, 0x1

    .line 523
    :goto_1
    if-eqz v0, :cond_0

    .line 524
    :cond_3
    const/4 v0, 0x3

    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    .line 20531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:J

    .line 20532
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0}, Lkez;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20533
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v0, p0}, Lkez;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 20538
    :cond_4
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lkex;

    if-eqz v0, :cond_0

    .line 20539
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lkex;

    invoke-interface {v0}, Lkex;->a()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 20149
    goto :goto_1
.end method

.method private e()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-byte v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v1}, Lkfe;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v1}, Lkez;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    invoke-virtual {v1, p0}, Lkez;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 554
    :cond_1
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    .line 20672
    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:B

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 558
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 723
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 917
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v9, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Landroid/view/MotionEvent;

    .line 921
    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 24265
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-super {p0, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x4

    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    .line 622
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->b(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    goto :goto_0
.end method

.method public final a(Lkey;)V
    .locals 2
    .param p1, "ptrUIHandler"    # Lkey;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 776
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:Lkez;

    .line 22031
    if-nez p1, :cond_1

    .line 22039
    :cond_0
    :goto_0
    return-void

    .line 22034
    :cond_1
    if-eqz v0, :cond_0

    .line 22037
    iget-object v1, v0, Lkez;->a:Lkey;

    if-nez v1, :cond_2

    .line 22038
    iput-object p1, v0, Lkez;->a:Lkey;

    goto :goto_0

    .line 23014
    :cond_2
    :goto_1
    iget-object v1, v0, Lkez;->a:Lkey;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lkez;->a:Lkey;

    if-ne v1, p1, :cond_3

    const/4 v1, 0x1

    .line 22046
    :goto_2
    if-nez v1, :cond_0

    .line 22049
    iget-object v1, v0, Lkez;->b:Lkez;

    if-eqz v1, :cond_4

    .line 22043
    iget-object v0, v0, Lkez;->b:Lkez;

    goto :goto_1

    .line 23014
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 22054
    :cond_4
    new-instance v1, Lkez;

    invoke-direct {v1}, Lkez;-><init>()V

    .line 22055
    iput-object p1, v1, Lkez;->a:Lkey;

    .line 22056
    iput-object v1, v0, Lkez;->b:Lkez;

    goto :goto_0
.end method

.method a(Z)V
    .locals 3
    .param p1, "stayForLoading"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 445
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->d()Z

    .line 447
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 449
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Z

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 452
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v1}, Lkfe;->f()I

    move-result v1

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(II)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 18500
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c()V

    goto :goto_0

    .line 460
    :cond_2
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    goto :goto_0

    .line 18514
    :cond_3
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 698
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 893
    instance-of v0, p1, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 270
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v7, :cond_1

    .line 3265
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 339
    :goto_0
    return v6

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 274
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 9265
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 277
    :pswitch_0
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 4037
    iput-boolean v3, v7, Lkfe;->k:Z

    .line 278
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v7}, Lkfe;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    invoke-virtual {p0, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 283
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v7}, Lkfe;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 284
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()V

    goto :goto_0

    .line 4265
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 5265
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 293
    :pswitch_1
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Z

    .line 294
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 6071
    iput-boolean v6, v7, Lkfe;->k:Z

    .line 6072
    iget v10, v7, Lkfe;->e:I

    iput v10, v7, Lkfe;->h:I

    .line 6073
    iget-object v7, v7, Lkfe;->b:Landroid/graphics/PointF;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-virtual {v7}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a()V

    .line 298
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 6265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 306
    :pswitch_2
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Landroid/view/MotionEvent;

    .line 307
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lkfe;->a(FF)V

    .line 308
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 7089
    iget v4, v7, Lkfe;->c:F

    .line 309
    .local v4, "offsetX":F
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 7093
    iget v5, v7, Lkfe;->d:F

    .line 311
    .local v5, "offsetY":F
    iget-boolean v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    if-nez v7, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 312
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v7}, Lkfe;->d()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    iput-boolean v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 316
    :cond_5
    iget-boolean v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    if-eqz v7, :cond_6

    .line 7265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 320
    :cond_6
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    move v2, v6

    .line 321
    .local v2, "moveDown":Z
    :goto_1
    if-nez v2, :cond_7

    move v3, v6

    .line 322
    .local v3, "moveUp":Z
    :cond_7
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v7}, Lkfe;->b()Z

    move-result v1

    .line 330
    .local v1, "canMoveUp":Z
    if-eqz v2, :cond_9

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lkex;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lkex;

    iget-object v8, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    iget-object v9, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-interface {v7, p0, v8, v9}, Lkex;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 8265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .end local v1    # "canMoveUp":Z
    .end local v2    # "moveDown":Z
    .end local v3    # "moveUp":Z
    :cond_8
    move v2, v3

    .line 320
    goto :goto_1

    .line 334
    .restart local v1    # "canMoveUp":Z
    .restart local v2    # "moveDown":Z
    .restart local v3    # "moveUp":Z
    :cond_9
    if-eqz v3, :cond_a

    if-nez v1, :cond_b

    :cond_a
    if-eqz v2, :cond_2

    .line 335
    :cond_b
    invoke-direct {p0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 898
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 908
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 903
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 816
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->f()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0}, Lkfe;->a()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 24058
    iget v0, v0, Lkfe;->i:F

    .line 843
    return v0
.end method

.method public getResistance()F
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 24029
    iget v0, v0, Lkfe;->j:F

    .line 793
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 174
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildCount()I

    move-result v2

    .line 116
    .local v2, "childCount":I
    if-le v2, v5, :cond_0

    .line 117
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_0
    if-ne v2, v5, :cond_b

    .line 119
    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v5, :cond_1

    .line 120
    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:I

    invoke-virtual {p0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 122
    :cond_1
    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-nez v5, :cond_2

    .line 123
    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:I

    invoke-virtual {p0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    .line 127
    :cond_2
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v5, :cond_4

    .line 129
    :cond_3
    invoke-virtual {p0, v7}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "child1":Landroid/view/View;
    invoke-virtual {p0, v6}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "child2":Landroid/view/View;
    instance-of v5, v0, Lkey;

    if-eqz v5, :cond_6

    .line 132
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    move-object v4, p0

    .line 148
    .end local v1    # "child2":Landroid/view/View;
    .end local p0    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    :goto_0
    iput-object v1, v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    .line 165
    .end local v0    # "child1":Landroid/view/View;
    :cond_4
    :goto_1
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 166
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 168
    :cond_5
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 169
    return-void

    .line 134
    .restart local v0    # "child1":Landroid/view/View;
    .restart local v1    # "child2":Landroid/view/View;
    .restart local p0    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    :cond_6
    instance-of v5, v1, Lkey;

    if-eqz v5, :cond_7

    .line 135
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    move-object v4, p0

    .end local p0    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    .local v4, "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    :goto_2
    move-object v1, v0

    .line 148
    goto :goto_0

    .line 139
    .end local v4    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    .restart local p0    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    :cond_7
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-nez v5, :cond_8

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v5, :cond_8

    .line 140
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    move-object v4, p0

    .line 141
    goto :goto_0

    .line 145
    :cond_8
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-nez v5, :cond_a

    .line 146
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-ne v5, v0, :cond_9

    .end local v1    # "child2":Landroid/view/View;
    :goto_3
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    goto :goto_1

    .restart local v1    # "child2":Landroid/view/View;
    :cond_9
    move-object v1, v0

    goto :goto_3

    .line 148
    :cond_a
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-ne v5, v0, :cond_d

    move-object v4, p0

    goto :goto_0

    .line 153
    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    :cond_b
    if-ne v2, v6, :cond_c

    .line 154
    invoke-virtual {p0, v7}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    goto :goto_1

    .line 156
    :cond_c
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    .local v3, "errorView":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 158
    const v5, -0x9a00

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    const-string/jumbo v5, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iput-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    .line 163
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .end local v3    # "errorView":Landroid/widget/TextView;
    .restart local v0    # "child1":Landroid/view/View;
    .restart local v1    # "child2":Landroid/view/View;
    :cond_d
    move-object v4, p0

    .end local p0    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    .restart local v4    # "this":Lin/srain/cube/views/ptr/PtrFrameLayout;
    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "flag"    # Z
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 229
    .line 2233
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 3101
    iget v1, v0, Lkfe;->e:I

    .line 2234
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v2

    .line 2235
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    .line 2237
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2239
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    .line 2240
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    sub-int/2addr v0, v5

    .line 2241
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 2242
    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 2243
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v7, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 2248
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2249
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    const/4 v0, 0x0

    move v1, v0

    .line 2252
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2253
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 2254
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 2255
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    .line 2256
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 2260
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 230
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 194
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 196
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 197
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    .line 198
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    invoke-virtual {v0, v1}, Lkfe;->b(I)V

    .line 201
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 202
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:Landroid/view/View;

    .line 2217
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2219
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 2221
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, v3, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 2224
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 212
    :cond_1
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 811
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:I

    .line 812
    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 825
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:I

    .line 826
    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 715
    if-eqz p1, :cond_0

    .line 716
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:B

    or-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    goto :goto_0
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 879
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 880
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    invoke-virtual {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 882
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 883
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 884
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 885
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    :cond_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:Landroid/view/View;

    .line 888
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 889
    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .param p1, "yes"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 764
    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0
    .param p1, "keepOrNot"    # Z

    .prologue
    .line 862
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:Z

    .line 863
    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 754
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:I

    .line 755
    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 24173
    iput p1, v0, Lkfe;->l:I

    .line 854
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 838
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0, p1}, Lkfe;->a(I)V

    .line 839
    return-void
.end method

.method public setPinContent(Z)V
    .locals 2
    .param p1, "pinContent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 732
    if-eqz p1, :cond_0

    .line 733
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:B

    or-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    goto :goto_0
.end method

.method public setPtrHandler(Lkex;)V
    .locals 0
    .param p1, "ptrHandler"    # Lkex;

    .prologue
    .line 772
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:Lkex;

    .line 773
    return-void
.end method

.method public setPtrIndicator(Lkfe;)V
    .locals 2
    .param p1, "slider"    # Lkfe;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 785
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    if-eq v0, p1, :cond_0

    .line 786
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 23131
    iget v1, v0, Lkfe;->e:I

    iput v1, p1, Lkfe;->e:I

    .line 23132
    iget v1, v0, Lkfe;->f:I

    iput v1, p1, Lkfe;->f:I

    .line 23133
    iget v0, v0, Lkfe;->g:I

    iput v0, p1, Lkfe;->g:I

    .line 788
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 789
    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0
    .param p1, "pullToRefresh"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 871
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 829
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    invoke-virtual {v0, p1}, Lkfe;->a(F)V

    .line 830
    return-void
.end method

.method public setRefreshCompleteHook(Lkfa;)V
    .locals 1
    .param p1, "hook"    # Lkfa;

    .prologue
    .line 475
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:Lkfa;

    .line 476
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$2;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 19054
    iput-object v0, p1, Lkfa;->a:Ljava/lang/Runnable;

    .line 485
    return-void
.end method

.method public setResistance(F)V
    .locals 1
    .param p1, "resistance"    # F

    .prologue
    .line 797
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:Lkfe;

    .line 24033
    iput p1, v0, Lkfe;->j:F

    .line 798
    return-void
.end method
