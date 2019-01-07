.class public Lcom/alibaba/android/user/widget/BackgroundImageView;
.super Landroid/widget/ImageView;
.source "BackgroundImageView.java"


# static fields
.field private static f:Lhao;

.field private static final g:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field public b:Ljava/lang/String;

.field public c:Z

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private h:I

.field private i:F

.field private j:I

.field private k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lhao;

    invoke-direct {v0}, Lhao;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/widget/BackgroundImageView;->f:Lhao;

    .line 42
    const-class v0, Lcom/alibaba/android/user/widget/BackgroundImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/widget/BackgroundImageView;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 44
    const/16 v0, 0x30

    iput v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->h:I

    .line 146
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    .line 224
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->k:[I

    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->a()V

    .line 60
    return-void

    .line 224
    nop

    :array_0
    .array-data 4
        -0x76466a
        -0x766547
        -0x467677
        -0x764747
        -0x4a4677
        -0x454b76
        -0x755546
        -0x674677
        -0x657647
        -0x467663
        -0x765447
        -0x514677
        -0x455976
        -0x457546
        -0x554576
        -0x757546
        -0x456d76
        -0x764654
        -0x455176
        -0x456176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/widget/BackgroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 44
    const/16 v2, 0x30

    iput v2, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->h:I

    .line 146
    const/high16 v2, 0x41400000    # 12.0f

    iput v2, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    .line 224
    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->k:[I

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->a()V

    .line 70
    sget-object v2, Lezg$n;->AvatarImageView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->AvatarImageView_textSize:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 72
    .local v1, "size":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 73
    iput v1, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void

    .line 75
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    goto :goto_0

    .line 224
    nop

    :array_0
    .array-data 4
        -0x76466a
        -0x766547
        -0x467677
        -0x764747
        -0x4a4677
        -0x454b76
        -0x755546
        -0x674677
        -0x657647
        -0x467663
        -0x765447
        -0x514677
        -0x455976
        -0x457546
        -0x554576
        -0x757546
        -0x456d76
        -0x764654
        -0x455176
        -0x456176
    .end array-data
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 81
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->e:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 153
    const-string/jumbo v2, ""

    .line 155
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v9

    .line 164
    .local v9, "strategy":Lhcj;
    iget v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->h:I

    iget v1, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->h:I

    invoke-virtual {v9, v2, v0, v1}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 171
    .end local v9    # "strategy":Lhcj;
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v8

    .line 160
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/widget/BackgroundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->invalidate()V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingLeft()I

    move-result v5

    .line 178
    .local v5, "x":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingTop()I

    move-result v6

    .line 180
    .local v6, "y":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingRight()I

    move-result v9

    sub-int v4, v7, v9

    .line 181
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getPaddingBottom()I

    move-result v9

    sub-int v2, v7, v9

    .line 183
    .local v2, "height":I
    iget-object v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->e:Landroid/graphics/Paint;

    iget v9, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    iget-object v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->c:Z

    if-nez v7, :cond_3

    .line 185
    iget-object v10, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->b:Ljava/lang/String;

    .line 1209
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1210
    const/high16 v7, -0x1000000

    .line 185
    :goto_0
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v5

    int-to-float v9, v6

    add-int v10, v5, v4

    int-to-float v10, v10

    add-int v11, v6, v2

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    :goto_1
    return-void

    .line 1211
    :cond_0
    iget v9, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->j:I

    if-eqz v9, :cond_1

    .line 1213
    iget v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->j:I

    goto :goto_0

    .line 1216
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    array-length v12, v11

    move v7, v8

    move v9, v8

    :goto_2
    if-ge v7, v12, :cond_2

    aget-char v13, v11, v7

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    .line 1217
    invoke-virtual {v13}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/2addr v9, v13

    .line 1216
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1219
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->k:[I

    array-length v7, v7

    rem-int v7, v9, v7

    .line 1220
    iget-object v8, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->k:[I

    aget v7, v8, v7

    goto :goto_0

    .line 191
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 193
    add-int v7, v5, v4

    add-int v8, v6, v2

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 200
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lezg$e;->avatar_download_bg:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v5

    int-to-float v9, v6

    add-int v10, v5, v4

    int-to-float v10, v10

    add-int v11, v6, v2

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 202
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    .line 203
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setDefaultColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->j:I

    .line 144
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->c:Z

    .line 114
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->c:Z

    .line 122
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->c:Z

    .line 130
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->h:I

    .line 139
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/BackgroundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->b(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/android/user/widget/BackgroundImageView;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    return-void
.end method
