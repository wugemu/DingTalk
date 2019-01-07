.class public Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;
.super Ljava/lang/Object;
.source "DanmakuItem.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/IAVObject;
.implements Ljop;


# static fields
.field private static sBaseSpeed:I

.field private static strokePaint:Landroid/text/TextPaint;


# instance fields
.field private borderStaticLayout:Landroid/text/StaticLayout;

.field private mContainerHeight:I

.field private mContainerWidth:I

.field private mContent:Ljava/lang/String;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrX:I

.field private mCurrY:I

.field private mDanmakuStyle:Ljoo;

.field private mDrawing:Z

.field private mShowTime:J

.field private mSpeedFactorX:F

.field private mTextColor:I

.field private mTextSize:I

.field private staticLayout:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    .line 38
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 49
    sput-object v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 53
    sget-object v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    sget-object v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 55
    sget-object v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JIIILjoo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "showTime"    # J
    .param p5, "width"    # I
    .param p6, "startX"    # I
    .param p7, "startY"    # I
    .param p8, "style"    # Ljoo;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextColor:I

    .line 96
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContext:Landroid/content/Context;

    .line 97
    iput-object p8, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mDanmakuStyle:Ljoo;

    .line 98
    iput p5, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerWidth:I

    .line 100
    iput-object p2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    .line 102
    iput-wide p3, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mShowTime:J

    .line 103
    iput p6, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    .line 104
    iput p7, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrY:I

    .line 106
    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->setTextColor(I)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->setTextSize(I)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    .line 110
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->measure()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJIIILjoo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "send"    # Z
    .param p5, "showTime"    # J
    .param p7, "width"    # I
    .param p8, "startX"    # I
    .param p9, "startY"    # I
    .param p10, "style"    # Ljoo;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v2, -0x1

    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextColor:I

    .line 60
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContext:Landroid/content/Context;

    .line 61
    iput-object p10, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mDanmakuStyle:Ljoo;

    .line 62
    iput p7, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerWidth:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 66
    const-string/jumbo v2, "\u2605"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, "nickBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    if-eqz p4, :cond_2

    .line 79
    const-string/jumbo v2, "\u2605"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    .line 83
    iput-wide p5, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mShowTime:J

    .line 84
    iput p8, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    .line 85
    iput p9, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrY:I

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->setTextColor(I)V

    .line 89
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->setTextSize(I)V

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    .line 91
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->measure()V

    .line 92
    return-void

    .line 72
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 290
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getBaseSpeed()I
    .locals 1

    .prologue
    .line 280
    sget v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    return v0
.end method

.method private static getFontHeight(Landroid/text/TextPaint;)I
    .locals 4
    .param p0, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 295
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private measure()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 130
    .local v2, "tp":Landroid/text/TextPaint;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 131
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 132
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    sget-object v0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 135
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 139
    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->getFontHeight(Landroid/text/TextPaint;)I

    move-result v0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContentHeight:I

    .line 141
    new-instance v1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v1, "spannableString":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    .line 142
    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    .line 147
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->staticLayout:Landroid/text/StaticLayout;

    .line 152
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContentWidth:I

    .line 153
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v5, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->strokePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContent:Ljava/lang/String;

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v4, v6, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->borderStaticLayout:Landroid/text/StaticLayout;

    .line 160
    return-void
.end method

.method public static setBaseSpeed(I)V
    .locals 0
    .param p0, "baseSpeed"    # I

    .prologue
    .line 284
    sput p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    .line 285
    return-void
.end method


# virtual methods
.method public addDrawingList(Z)V
    .locals 0
    .param p1, "drawing"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mDrawing:Z

    .line 116
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Z)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pause"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 165
    .local v1, "canvasWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 167
    .local v0, "canvasHeight":I
    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerHeight:I

    if-eq v0, v2, :cond_1

    .line 168
    :cond_0
    iput v1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerWidth:I

    .line 169
    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerHeight:I

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->borderStaticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    if-nez p2, :cond_2

    .line 180
    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    int-to-float v2, v2

    sget v3, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    .line 181
    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    if-gtz v2, :cond_2

    .line 182
    iget v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    .line 185
    :cond_2
    return-void
.end method

.method public drawing()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mDrawing:Z

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContentHeight:I

    return v0
.end method

.method public getSpeedFactor()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContentWidth:I

    return v0
.end method

.method public isOut()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContentWidth:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContext:Landroid/content/Context;

    .line 230
    return-void
.end method

.method public setSpeedFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 214
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    .line 215
    return-void
.end method

.method public setStartPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrX:I

    .line 209
    iput p2, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mCurrY:I

    .line 210
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextColor:I

    .line 202
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->measure()V

    .line 204
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSizeInDip"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    if-lez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContext:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextSize:I

    .line 191
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->measure()V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mTextSize:I

    goto :goto_0
.end method

.method public showTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mShowTime:J

    return-wide v0
.end method

.method public willHit(Ljop;)Z
    .locals 7
    .param p1, "runningItem"    # Ljop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-interface {p1}, Ljop;->getWidth()I

    move-result v5

    invoke-interface {p1}, Ljop;->getCurrX()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mContainerWidth:I

    if-le v5, v6, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 263
    :cond_1
    invoke-interface {p1}, Ljop;->getSpeedFactor()F

    move-result v5

    iget v6, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v3, v4

    .line 264
    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {p1}, Ljop;->getCurrX()I

    move-result v5

    invoke-interface {p1}, Ljop;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v0, v5

    .line 268
    .local v0, "len1":F
    invoke-interface {p1}, Ljop;->getSpeedFactor()F

    move-result v5

    sget v6, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v2, v0, v5

    .line 269
    .local v2, "t1":F
    iget v5, p0, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->mSpeedFactorX:F

    mul-float/2addr v5, v2

    sget v6, Lcom/taobao/taobaoavsdk/widget/extra/danmu/DanmakuItem;->sBaseSpeed:I

    int-to-float v6, v6

    mul-float v1, v5, v6

    .line 270
    .local v1, "len2":F
    cmpl-float v5, v1, v0

    if-gtz v5, :cond_0

    move v3, v4

    .line 273
    goto :goto_0
.end method
