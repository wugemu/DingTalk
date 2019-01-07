.class public Lcom/alibaba/android/user/connection/ui/ExtendEditText;
.super Landroid/widget/EditText;
.source "ExtendEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;,
        Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;,
        Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;
    }
.end annotation


# static fields
.field public static final b:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

.field private static final m:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;


# instance fields
.field a:I

.field private c:Z

.field private d:Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

.field private e:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/LinearGradient;

.field private i:Landroid/view/animation/Transformation;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->m:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    .line 298
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$2;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->b:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->g:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    .line 61
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->i:Landroid/view/animation/Transformation;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->l:Landroid/graphics/Rect;

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->g:I

    .line 52
    iput v4, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    .line 61
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->i:Landroid/view/animation/Transformation;

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->l:Landroid/graphics/Rect;

    .line 71
    sget-object v2, Lezg$n;->EditText:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->EditText_clearFocusOnBack:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 74
    .local v1, "clearFocusOnBack":Z
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->c:Z

    .line 75
    sget v2, Lezg$n;->EditText_maxLength:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->g:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    .line 61
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->i:Landroid/view/animation/Transformation;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->l:Landroid/graphics/Rect;

    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a()V

    .line 84
    return-void
.end method

.method private a(F)I
    .locals 2
    .param p1, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 464
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 469
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 471
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 472
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/ui/ExtendEditText;)Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->e:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    iget v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    if-ltz v1, :cond_0

    .line 94
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;

    iget v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;-><init>(Lcom/alibaba/android/user/connection/ui/ExtendEditText;I)V

    .line 95
    .local v0, "filter":Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    .end local v0    # "filter":Lcom/alibaba/android/user/connection/ui/ExtendEditText$b;
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/ui/ExtendEditText;)Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/ui/ExtendEditText;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->d:Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

    return-object v0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 353
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTargetLine()I

    move-result v2

    .line 359
    .local v2, "line":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 360
    .local v6, "top":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 361
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getScrollY()I

    move-result v5

    .line 364
    .local v5, "scollY":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getScrollX()I

    move-result v3

    .line 366
    .local v3, "scollToX":I
    sub-int v7, v5, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v0, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v7, v8, :cond_1

    move v4, v6

    .line 367
    .local v4, "scollToY":I
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->scrollTo(II)V

    goto :goto_0

    .end local v4    # "scollToY":I
    :cond_1
    move v4, v0

    .line 366
    goto :goto_1
.end method

.method private getMaxTextHeight()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 168
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 173
    .local v1, "size":I
    if-eqz v1, :cond_0

    .line 176
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    goto :goto_0
.end method

.method private getMaxTextWidth()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 143
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, "hint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->j:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->j:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->k:I

    .line 150
    :cond_0
    iget v4, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->k:I

    .line 163
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return v4

    .line 153
    :cond_2
    if-nez v2, :cond_3

    .line 154
    const/4 v4, 0x0

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    .line 158
    .local v5, "size":I
    const/4 v4, 0x0

    .line 159
    .local v4, "maxWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 160
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v3, v6

    .line 161
    .local v3, "lineWidth":I
    if-ge v4, v3, :cond_4

    move v4, v3

    .line 159
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method getTargetLine()I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, "line":I
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_0

    .line 457
    :goto_0
    return v4

    .line 436
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 438
    .local v0, "currentapiVersion":I
    const/16 v5, 0xd

    if-le v0, v5, :cond_1

    .line 440
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getOffsetForPosition(FF)I

    move-result v3

    .line 441
    .local v3, "offset":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .end local v0    # "currentapiVersion":I
    .end local v3    # "offset":I
    :goto_1
    move v4, v2

    .line 457
    goto :goto_0

    .line 442
    .restart local v0    # "currentapiVersion":I
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 453
    .end local v0    # "currentapiVersion":I
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 454
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getTargetLine error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2060
    invoke-static {v4, v5}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_1

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentapiVersion":I
    :cond_1
    const/16 v5, 0xa

    if-le v0, v5, :cond_2

    .line 448
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a(F)I

    move-result v2

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->a(F)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 269
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->h:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->h:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 273
    iget-object v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->h:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 276
    :cond_1
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-boolean v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->clearFocus()V

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSelectionChanged(II)V
    .locals 0
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 519
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->b()V

    .line 521
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLineCount()I

    move-result v0

    .line 498
    .local v0, "currentLineCount":I
    iget v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->f:I

    if-eq v1, v0, :cond_2

    .line 500
    iget v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->f:I

    if-ge v1, v0, :cond_1

    .line 501
    iget v1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->g:I

    if-le v0, v1, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2374
    if-eqz v1, :cond_0

    .line 2378
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTargetLine()I

    move-result v2

    .line 2379
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 2382
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getScrollX()I

    move-result v2

    .line 2384
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->scrollTo(II)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 2390
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 2391
    if-eqz v1, :cond_0

    .line 2395
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getTargetLine()I

    move-result v2

    .line 2398
    add-int/lit8 v2, v2, -0x1

    .line 2400
    if-ltz v2, :cond_0

    .line 2401
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 2404
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->getScrollX()I

    move-result v2

    .line 2406
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->scrollTo(II)V

    goto :goto_0

    .line 512
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->b()V

    goto :goto_0
.end method

.method public postInvalidateOnAnimation()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 280
    const-wide/16 v0, 0x21

    invoke-super {p0, v0, v1}, Landroid/widget/EditText;->postInvalidateDelayed(J)V

    .line 281
    return-void
.end method

.method public setBeforeChangeLineCount(I)V
    .locals 0
    .param p1, "beforeChangeLineCount"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->f:I

    .line 525
    return-void
.end method

.method public setClearFocusOnBack(Z)V
    .locals 0
    .param p1, "clear"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->c:Z

    .line 101
    return-void
.end method

.method public setLimitListener(Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;)V
    .locals 0
    .param p1, "limitListener"    # Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->d:Lcom/alibaba/android/user/connection/ui/ExtendEditText$c;

    .line 105
    return-void
.end method

.method public setMaxLengthConvertor(Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;)V
    .locals 0
    .param p1, "convertor"    # Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->e:Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;

    .line 109
    return-void
.end method

.method public setMaxLineToScrollAlways(I)V
    .locals 0
    .param p1, "maxLine"    # I

    .prologue
    .line 528
    iput p1, p0, Lcom/alibaba/android/user/connection/ui/ExtendEditText;->g:I

    .line 529
    return-void
.end method
