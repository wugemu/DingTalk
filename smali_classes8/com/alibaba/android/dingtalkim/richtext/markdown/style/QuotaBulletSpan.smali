.class public Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;
.super Landroid/text/style/QuoteSpan;
.source "QuotaBulletSpan.java"


# static fields
.field private static final BULLET_RADIUS:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_WIDTH:I = 0x28

.field private static final STRIPE_WIDTH:I = 0xf

.field private static circleBulletPath:Landroid/graphics/Path; = null

.field private static final mGapWidth:I = 0x28

.field private static rectBulletPath:Landroid/graphics/Path; = null

.field private static final tab:I = 0x28


# instance fields
.field private bulletColor:I

.field private final index:Ljava/lang/String;

.field private level:I

.field private margin:I

.field private quotaLevel:I

.field private textViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .line 32
    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 168
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/widget/TextView;)V
    .locals 1
    .param p1, "quotaLevel"    # I
    .param p2, "bulletLevel"    # I
    .param p3, "quotaColor"    # I
    .param p4, "bulletColor"    # I
    .param p5, "pointIndex"    # I
    .param p6, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0, p3}, Landroid/text/style/QuoteSpan;-><init>(I)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    .line 44
    iput p1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->quotaLevel:I

    .line 45
    iput p2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    .line 46
    if-lez p5, :cond_2

    .line 47
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 48
    invoke-static {p5}, Ldxa;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    .line 57
    :goto_0
    iput p4, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->bulletColor:I

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 59
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    .line 50
    add-int/lit8 v0, p5, -0x1

    invoke-static {v0}, Ldxa;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->quotaLevel:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->bulletColor:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 13
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
    .param p12, "layout"    # Landroid/text/Layout;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    .line 76
    .local v12, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 78
    .local v7, "color":I
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->getColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/4 v8, 0x0

    .line 84
    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->quotaLevel:I

    if-gt v8, v1, :cond_0

    .line 85
    mul-int/lit8 v9, v8, 0x37

    .line 86
    .local v9, "offset":I
    add-int v1, p3, v9

    int-to-float v2, v1

    move/from16 v0, p5

    int-to-float v3, v0

    add-int v1, p3, v9

    mul-int/lit8 v4, p4, 0xf

    add-int/2addr v1, v4

    int-to-float v4, v1

    move/from16 v0, p7

    int-to-float v5, v0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    add-int/lit8 v8, v8, 0x1

    .line 88
    goto :goto_0

    .line 90
    .end local v9    # "offset":I
    :cond_0
    invoke-virtual {p2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    move/from16 v0, p9

    if-ne v1, v0, :cond_1

    .line 96
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    .line 97
    .local v10, "oldColor":I
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->bulletColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p3

    int-to-float v2, v0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    move/from16 v0, p6

    int-to-float v3, v0

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    :goto_1
    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    .end local v10    # "oldColor":I
    :cond_1
    return-void

    .line 101
    .restart local v10    # "oldColor":I
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    .line 102
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 110
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 111
    sget-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_3

    .line 112
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 114
    sput-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    const v2, -0x3f199999    # -7.2000003f

    const v3, -0x3f199999    # -7.2000003f

    const v4, 0x40e66667    # 7.2000003f

    const v5, 0x40e66667    # 7.2000003f

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 116
    :cond_3
    sget-object v11, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 126
    .local v11, "path":Landroid/graphics/Path;
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    add-int v1, v1, p3

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    invoke-virtual {p1, v11, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    .end local v11    # "path":Landroid/graphics/Path;
    :goto_4
    invoke-virtual {p2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 105
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 118
    :cond_5
    sget-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_6

    .line 119
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 121
    sput-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x40e66667    # 7.2000003f

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 123
    :cond_6
    sget-object v11, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .restart local v11    # "path":Landroid/graphics/Path;
    goto :goto_3

    .line 131
    .end local v11    # "path":Landroid/graphics/Path;
    :cond_7
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    add-int v1, v1, p3

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method public getLeadingMargin(Z)I
    .locals 5
    .param p1, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    if-eqz v2, :cond_0

    .line 145
    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    .line 155
    :goto_0
    return v2

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v4

    iget v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    .line 153
    :goto_1
    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->quotaLevel:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v2, 0x37

    .line 154
    .local v0, "bulletMargin":I
    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    .line 155
    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    goto :goto_0

    .line 151
    .end local v0    # "bulletMargin":I
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x34

    add-int/lit8 v2, v2, 0x28

    iput v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/text/style/QuoteSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->quotaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->bulletColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->margin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return-void
.end method
