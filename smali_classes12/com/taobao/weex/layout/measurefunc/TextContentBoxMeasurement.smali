.class public Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "TextContentBoxMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
    }
.end annotation


# static fields
.field private static final DUMMY_CANVAS:Landroid/graphics/Canvas;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenMeasured:Z

.field private layout:Landroid/text/Layout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mColor:I

.field private mFontFamily:Ljava/lang/String;

.field private mFontSize:I

.field private mFontStyle:I

.field private mFontWeight:I

.field private mIsColorSet:Z

.field private mLineHeight:I

.field private mNumberOfLines:I

.field private mText:Ljava/lang/String;

.field private mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field private mTextPaint:Landroid/text/TextPaint;

.field private previousWidth:F

.field private spanned:Landroid/text/Spanned;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textOverflow:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 101
    iput-boolean v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 102
    iput-boolean v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 104
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 105
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 106
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 107
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 108
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    .line 109
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 110
    iput-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method private adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V
    .locals 9
    .param p1, "beforeTruncate"    # Landroid/text/Spanned;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "afterTruncate"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 422
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v6, Ljava/lang/Object;

    invoke-interface {p1, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 423
    .local v2, "spans":[Ljava/lang/Object;
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v2, v4

    .line 424
    .local v1, "span":Ljava/lang/Object;
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 425
    .local v3, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 426
    .local v0, "end":I
    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ne v0, v7, :cond_0

    .line 427
    invoke-interface {p2, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 428
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p2, v1, v5, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 423
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "end":I
    .end local v1    # "span":Ljava/lang/Object;
    .end local v3    # "start":I
    :cond_1
    return-void
.end method

.method private createLayout(FLandroid/text/Layout;)Landroid/text/Layout;
    .locals 13
    .param p1, "textWidth"    # F
    .param p2, "previousLayout"    # Landroid/text/Layout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 339
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 344
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 346
    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 347
    .local v12, "lastLineStart":I
    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 348
    .local v11, "lastLineEnd":I
    if-ge v12, v11, :cond_3

    .line 350
    if-lez v12, :cond_2

    .line 351
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v12}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 355
    .local v9, "builder":Landroid/text/SpannableStringBuilder;
    :goto_1
    new-instance v10, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v1, v12, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 356
    .local v10, "lastLine":Landroid/text/Editable;
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    invoke-direct {p0, v10, v1, v2, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 357
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-direct {p0, v1, v9}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V

    .line 358
    iput-object v9, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 359
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 363
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v10    # "lastLine":Landroid/text/Editable;
    .end local v11    # "lastLineEnd":I
    .end local v12    # "lastLineStart":I
    :goto_2
    return-object v1

    .line 342
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_1
    move-object v0, p2

    .restart local v0    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 353
    .restart local v11    # "lastLineEnd":I
    .restart local v12    # "lastLineStart":I
    :cond_2
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .restart local v9    # "builder":Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v11    # "lastLineEnd":I
    .end local v12    # "lastLineStart":I
    :cond_3
    move-object v1, v0

    .line 363
    goto :goto_2
.end method

.method private getTextWidth(Landroid/text/TextPaint;FZ)F
    .locals 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # F
    .param p3, "forceToDesired"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 305
    if-eqz p3, :cond_0

    .line 322
    .end local p2    # "outerWidth":F
    :goto_0
    return p2

    .line 308
    .restart local p2    # "outerWidth":F
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 312
    :cond_1
    if-nez p3, :cond_3

    .line 315
    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-static {v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 316
    .local v0, "desiredWidth":F
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_2

    cmpg-float v2, v0, p2

    if-gez v2, :cond_3

    .line 317
    :cond_2
    move v1, v0

    .end local v0    # "desiredWidth":F
    .local v1, "textWidth":F
    :goto_1
    move p2, v1

    .line 322
    goto :goto_0

    .line 319
    .end local v1    # "textWidth":F
    :cond_3
    move v1, p2

    .restart local v1    # "textWidth":F
    goto :goto_1
.end method

.method private recalculateLayout(F)V
    .locals 4
    .param p1, "computedWidth"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result v0

    .line 435
    .local v0, "contentWidth":F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 437
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 439
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    goto :goto_0
.end method

.method private setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .locals 0
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanFlag"    # I

    .prologue
    .line 290
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 291
    return-void
.end method

.method private swap()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 474
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 475
    return-void
.end method

.method private truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;
    .locals 14
    .param p1, "source"    # Landroid/text/Editable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "desired"    # I
    .param p4, "truncateAt"    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    new-instance v9, Landroid/text/SpannedString;

    const-string/jumbo v1, ""

    invoke-direct {v9, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    .local v9, "ret":Landroid/text/Spanned;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 383
    if-eqz p4, :cond_1

    .line 384
    const-string/jumbo v1, "\u2026"

    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 385
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    .line 386
    .local v11, "spans":[Ljava/lang/Object;
    array-length v2, v11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v10, v11, v1

    .line 387
    .local v10, "span":Ljava/lang/Object;
    invoke-interface {p1, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 388
    .local v12, "start":I
    invoke-interface {p1, v10}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 389
    .local v8, "end":I
    if-nez v12, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_0

    .line 390
    invoke-interface {p1, v10}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 391
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p1, v10}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v10, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v8    # "end":I
    .end local v10    # "span":Ljava/lang/Object;
    .end local v11    # "spans":[Ljava/lang/Object;
    .end local v12    # "start":I
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 400
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .line 401
    .local v13, "startOffset":I
    if-eqz p4, :cond_2

    .line 402
    add-int/lit8 v13, v13, -0x1

    .line 404
    :cond_2
    add-int/lit8 v1, v13, 0x1

    invoke-interface {p1, v13, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 405
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 406
    .local v0, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 407
    move-object v9, p1

    .line 412
    .end local v0    # "layout":Landroid/text/StaticLayout;
    .end local v13    # "startOffset":I
    :cond_3
    return-object v9
.end method

.method private updateStyleAndText()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleImp(Ljava/util/Map;)V

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXAttr;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    .line 203
    return-void
.end method

.method private updateStyleImp(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 211
    if-eqz p1, :cond_7

    .line 212
    const-string/jumbo v3, "lines"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getLines(Ljava/util/Map;)I

    move-result v1

    .line 214
    .local v1, "lines":I
    if-lez v1, :cond_8

    .end local v1    # "lines":I
    :goto_0
    iput v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 216
    :cond_0
    const-string/jumbo v3, "fontSize"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v3

    invoke-static {p1, v3}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;I)I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 219
    :cond_1
    const-string/jumbo v3, "fontWeight"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 222
    :cond_2
    const-string/jumbo v3, "fontStyle"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 225
    :cond_3
    const-string/jumbo v3, "color"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    .line 227
    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 229
    :cond_4
    const-string/jumbo v3, "textDecoration"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 232
    :cond_5
    const-string/jumbo v3, "fontFamily"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 235
    :cond_6
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextAlignment(Ljava/util/Map;)Landroid/text/Layout$Alignment;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    .line 236
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    .line 237
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v3

    invoke-static {p1, v3}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;I)I

    move-result v0

    .line 238
    .local v0, "lineHeight":I
    if-eq v0, v2, :cond_7

    .line 239
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    .line 242
    .end local v0    # "lineHeight":I
    :cond_7
    return-void

    .restart local v1    # "lines":I
    :cond_8
    move v1, v2

    .line 214
    goto/16 :goto_0

    .line 227
    .end local v1    # "lines":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private warmUpTextLayoutCache(Landroid/text/Layout;)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 456
    :try_start_0
    sget-object v2, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    const/4 v1, 0x1

    .line 462
    .local v1, "result":Z
    :goto_0
    return v1

    .line 458
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TextWarmUp"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method


# virtual methods
.method public createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    .local v0, "spannable":Landroid/text/SpannableString;
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    .line 258
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public layoutAfter(FF)V
    .locals 3
    .param p1, "computedWidth"    # F
    .param p2, "computedHeight"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_2

    .line 172
    iget-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 175
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result v0

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    .line 183
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 184
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->warmUpTextLayoutCache(Landroid/text/Layout;)Z

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->swap()V

    .line 191
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 196
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 198
    :cond_2
    return-void

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 181
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    goto :goto_0
.end method

.method public layoutBefore()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 129
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 131
    return-void
.end method

.method public measureInternal(FFII)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "widthMeasureMode"    # I
    .param p4, "heightMeasureMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 138
    move v1, p1

    .local v1, "measureWidth":F
    move v0, p2

    .line 139
    .local v0, "measureHeight":F
    iput-boolean v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 140
    iget-object v4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    sget v5, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    if-ne p3, v5, :cond_1

    :goto_0
    invoke-direct {p0, v4, p1, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result v2

    .line 142
    .local v2, "textWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 143
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 144
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 145
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 151
    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 162
    :cond_0
    :goto_2
    iput v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureWidth:F

    .line 163
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureHeight:F

    .line 164
    return-void

    .line 140
    .end local v2    # "textWidth":F
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 148
    .restart local v2    # "textWidth":F
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    .line 155
    :cond_3
    sget v3, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, v3, :cond_4

    .line 156
    const/4 v1, 0x0

    .line 158
    :cond_4
    sget v3, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p4, v3, :cond_0

    .line 159
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .locals 7
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "spanFlag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 262
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 263
    .local v4, "end":I
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    if-ne v0, v6, :cond_6

    .line 264
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 270
    :goto_0
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    if-eq v0, v6, :cond_0

    .line 271
    new-instance v2, Lcom/taobao/weex/dom/WXLineHeightSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 274
    :cond_0
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v2, v0}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 276
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 277
    :cond_1
    new-instance v2, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    iget-object v5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v5}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz v0, :cond_3

    .line 281
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne v0, v1, :cond_5

    .line 285
    :cond_4
    new-instance v2, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 287
    :cond_5
    return-void

    .line 267
    :cond_6
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_0
.end method
