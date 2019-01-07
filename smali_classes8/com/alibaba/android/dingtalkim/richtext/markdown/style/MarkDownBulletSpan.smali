.class public Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;
.super Landroid/text/style/BulletSpan;
.source "MarkDownBulletSpan.java"


# static fields
.field private static final BULLET_RADIUS:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD_GAP_WIDTH:I = 0x2

.field private static circleBulletPath:Landroid/graphics/Path; = null

.field private static final mGapWidth:I = 0x28

.field private static rectBulletPath:Landroid/graphics/Path; = null

.field private static final tab:I = 0x28


# instance fields
.field private final index:Ljava/lang/String;

.field private level:I

.field private final mColor:I

.field private final mWantColor:Z

.field private margin:I

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

    .line 34
    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .line 35
    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 169
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "color"    # I
    .param p3, "pointIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    const/16 v0, 0x28

    invoke-direct {p0, v0, p2}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 62
    iput p1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 63
    if-lez p3, :cond_2

    .line 64
    if-ne p1, v1, :cond_0

    .line 65
    invoke-static {p3}, Ldxa;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    .line 74
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    .line 75
    iput p2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mColor:I

    .line 76
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 67
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0}, Ldxa;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(IIILandroid/widget/TextView;)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "color"    # I
    .param p3, "pointIndex"    # I
    .param p4, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    .line 42
    const/16 v0, 0x28

    invoke-direct {p0, v0, p2}, Landroid/text/style/BulletSpan;-><init>(II)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 43
    iput p1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 44
    if-lez p3, :cond_2

    .line 45
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    if-ne v0, v2, :cond_0

    .line 46
    invoke-static {p3}, Ldxa;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    .line 55
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    .line 56
    iput p2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mColor:I

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 58
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 48
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0}, Ldxa;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 31
    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mColor:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
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
    .line 93
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    move/from16 v0, p9

    if-ne v1, v0, :cond_1

    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "oldcolor":I
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 97
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    move/from16 v0, p6

    int-to-float v3, v0

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    .end local v7    # "oldcolor":I
    :cond_1
    return-void

    .line 102
    .restart local v7    # "oldcolor":I
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    .line 103
    .local v9, "style":Landroid/graphics/Paint$Style;
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 104
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 112
    sget-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_3

    .line 113
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 115
    sput-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    const v2, -0x3f199999    # -7.2000003f

    const v3, -0x3f199999    # -7.2000003f

    const v4, 0x40e66667    # 7.2000003f

    const v5, 0x40e66667    # 7.2000003f

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 117
    :cond_3
    sget-object v8, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->rectBulletPath:Landroid/graphics/Path;

    .line 127
    .local v8, "path":Landroid/graphics/Path;
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    invoke-virtual {p1, v8, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    .end local v8    # "path":Landroid/graphics/Path;
    :goto_3
    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 106
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 119
    :cond_5
    sget-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    if-nez v1, :cond_6

    .line 120
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 122
    sput-object v1, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x40e66667    # 7.2000003f

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 124
    :cond_6
    sget-object v8, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->circleBulletPath:Landroid/graphics/Path;

    .restart local v8    # "path":Landroid/graphics/Path;
    goto :goto_2

    .line 132
    .end local v8    # "path":Landroid/graphics/Path;
    :cond_7
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public getLeadingMargin(Z)I
    .locals 4
    .param p1, "first"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v3, 0x42200000    # 40.0f

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    .line 82
    .local v0, "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    .line 87
    :goto_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    return v1

    .line 81
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x34

    add-int/lit8 v1, v1, 0x28

    iput v1, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mWantColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->index:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->margin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/MarkDownBulletSpan;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
