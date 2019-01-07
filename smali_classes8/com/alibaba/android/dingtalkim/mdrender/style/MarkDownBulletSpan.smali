.class public Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;
.super Landroid/text/style/BulletSpan;
.source "MarkDownBulletSpan.java"


# static fields
.field private static final BULLET_RADIUS:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_WIDTH:I

.field public static final STYLE_ABC_NUMBER:I = 0x2

.field public static final STYLE_NORMAL_NUMBER:I = 0x0

.field public static final STYLE_ROMAN_NUMBER:I = 0x1

.field private static final TAB_POINTLESS_WIDTH:I

.field private static final TAB_WIDTH:I

.field private static circleBulletPath:Landroid/graphics/Path;

.field private static rectBulletPath:Landroid/graphics/Path;


# instance fields
.field private mBulletStyle:I

.field private final mColor:I

.field private mMargin:I

.field private final mPointerIndex:Ljava/lang/String;

.field private mTextViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mWantColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x40e00000    # 7.0f

    .line 31
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->TAB_WIDTH:I

    .line 32
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->TAB_POINTLESS_WIDTH:I

    .line 33
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    .line 34
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    .line 42
    sput-object v3, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .line 43
    sput-object v3, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 162
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "bulletStyle"    # I
    .param p2, "color"    # I
    .param p3, "pointIndex"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;-><init>(IIILandroid/widget/TextView;)V

    .line 68
    return-void
.end method

.method public constructor <init>(IIILandroid/widget/TextView;)V
    .locals 3
    .param p1, "bulletStyle"    # I
    .param p2, "color"    # I
    .param p3, "pointIndex"    # I
    .param p4, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    .line 48
    sget v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    invoke-direct {p0, v0, p2}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    .line 49
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    .line 50
    if-lez p3, :cond_2

    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    if-ne v0, v2, :cond_0

    .line 52
    invoke-static {p3}, Ldol;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    .line 61
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mWantColor:Z

    .line 62
    iput p2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mColor:I

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 64
    return-void

    .line 53
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 54
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0}, Ldol;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 39
    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mWantColor:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mColor:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    .line 160
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "l"    # Landroid/text/Layout;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    move/from16 v0, p9

    if-ne v1, v0, :cond_1

    .line 89
    const/4 v7, 0x0

    .line 90
    .local v7, "oldColor":I
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 92
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move/from16 v0, p6

    int-to-float v3, v0

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    .end local v7    # "oldColor":I
    :cond_1
    return-void

    .line 97
    .restart local v7    # "oldColor":I
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    .line 98
    .local v9, "style":Landroid/graphics/Paint$Style;
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 99
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 107
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_3

    .line 108
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 109
    const v1, 0x3f99999a    # 1.2f

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    int-to-float v2, v2

    mul-float v4, v1, v2

    .line 110
    .local v4, "w":F
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    neg-float v2, v4

    neg-float v3, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 112
    .end local v4    # "w":F
    :cond_3
    sget-object v8, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 122
    .local v8, "path":Landroid/graphics/Path;
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    add-int/2addr v1, p3

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    invoke-virtual {p1, v8, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    .end local v8    # "path":Landroid/graphics/Path;
    :goto_3
    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 101
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 114
    :cond_5
    sget-object v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_6

    .line 115
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 117
    sput-object v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v5, 0x3f99999a    # 1.2f

    sget v6, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 119
    :cond_6
    sget-object v8, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .restart local v8    # "path":Landroid/graphics/Path;
    goto :goto_2

    .line 127
    .end local v8    # "path":Landroid/graphics/Path;
    :cond_7
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    add-int/2addr v1, p3

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public getLeadingMargin(Z)I
    .locals 5
    .param p1, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    .line 73
    .local v0, "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 74
    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->TAB_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    .line 82
    :goto_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    return v1

    .line 72
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 77
    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->TAB_POINTLESS_WIDTH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    goto :goto_1

    .line 79
    :cond_2
    sget v1, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->BULLET_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->GAP_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sget v2, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->TAB_WIDTH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mPointerIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mBulletStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;->mMargin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
