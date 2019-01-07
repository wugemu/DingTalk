.class public Lpl/droidsonroids/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "GifTextureView.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifTextureView$a;,
        Lpl/droidsonroids/gif/GifTextureView$b;
    }
.end annotation


# static fields
.field private static final a:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private b:Landroid/widget/ImageView$ScaleType;

.field private final c:Landroid/graphics/Matrix;

.field private d:Llgi;

.field private e:Lpl/droidsonroids/gif/GifTextureView$b;

.field private f:F

.field private g:Llgh$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lpl/droidsonroids/gif/GifTextureView;->a:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 74
    invoke-direct {p0, p2, v1, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;)Llgi;
    .locals 1
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView;

    .prologue
    .line 48
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Llgi;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 89
    if-eqz p1, :cond_5

    .line 90
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "scaleType"

    const/4 v4, -0x1

    invoke-interface {p1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "scaleTypeIndex":I
    if-ltz v0, :cond_0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 92
    sget-object v2, Lpl/droidsonroids/gif/GifTextureView;->a:[Landroid/widget/ImageView$ScaleType;

    aget-object v2, v2, v0

    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    .line 94
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Llgm$a;->GifTextureView:[I

    invoke-virtual {v2, p1, v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1145
    .local v1, "textureViewAttributes":Landroid/content/res/TypedArray;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1146
    sget v2, Llgm$a;->GifTextureView_gifSource:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1147
    const/4 v2, 0x0

    .line 96
    :goto_0
    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Llgi;

    .line 97
    sget v2, Llgm$a;->GifTextureView_isOpaque:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-super {p0, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 98
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance v2, Llgh$b;

    invoke-direct {v2, p0, p1, p2, v5}, Llgh$b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Llgh$b;

    .line 104
    .end local v0    # "scaleTypeIndex":I
    .end local v1    # "textureViewAttributes":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    new-instance v2, Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-direct {v2, p0}, Lpl/droidsonroids/gif/GifTextureView$b;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 106
    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Llgi;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifTextureView$b;->start()V

    .line 110
    :cond_1
    return-void

    .line 1150
    .restart local v0    # "scaleTypeIndex":I
    .restart local v1    # "textureViewAttributes":Landroid/content/res/TypedArray;
    :cond_2
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_4

    .line 1151
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1152
    sget-object v4, Llgh;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1153
    new-instance v2, Llgi$b;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, v4, v3}, Llgi$b;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 1154
    :cond_3
    const-string/jumbo v4, "string"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Expected string, drawable, mipmap or raw resource type. \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' is not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1158
    :cond_4
    new-instance v2, Llgi$a;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Llgi$a;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "scaleTypeIndex":I
    .end local v1    # "textureViewAttributes":Landroid/content/res/TypedArray;
    :cond_5
    invoke-super {p0, v5}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 102
    new-instance v2, Llgh$b;

    invoke-direct {v2}, Llgh$b;-><init>()V

    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Llgh$b;

    goto/16 :goto_1
.end method

.method private declared-synchronized a(Llgi;Lpl/droidsonroids/gif/GifTextureView$a;)V
    .locals 3
    .param p1, "inputSource"    # Llgi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholderDrawListener"    # Lpl/droidsonroids/gif/GifTextureView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lpl/droidsonroids/gif/annotations/Beta;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView$b;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :goto_0
    :try_start_2
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Llgi;

    .line 324
    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-direct {v1, p0}, Lpl/droidsonroids/gif/GifTextureView$b;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView$b;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :cond_0
    monitor-exit p0

    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private a(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 13
    .param p1, "gifInfoHandle"    # Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 378
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 379
    .local v5, "transform":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 380
    .local v7, "viewWidth":F
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getHeight()I

    move-result v8

    int-to-float v6, v8

    .line 382
    .local v6, "viewHeight":F
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v8, v7

    .line 383
    .local v2, "scaleX":F
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v8, v6

    .line 384
    .local v3, "scaleY":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 385
    .local v4, "src":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v10, v10, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 386
    .local v0, "dst":Landroid/graphics/RectF;
    sget-object v8, Lpl/droidsonroids/gif/GifTextureView$1;->a:[I

    iget-object v9, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 421
    :goto_0
    invoke-super {p0, v5}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 422
    :pswitch_0
    return-void

    .line 388
    :pswitch_1
    div-float v8, v7, v11

    div-float v9, v6, v11

    invoke-virtual {v5, v2, v3, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 391
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float v1, v12, v8

    .line 392
    .local v1, "scaleRef":F
    mul-float v8, v1, v2

    mul-float v9, v1, v3

    div-float v10, v7, v11

    div-float v11, v6, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 395
    .end local v1    # "scaleRef":F
    :pswitch_3
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_0

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_0

    .line 396
    const/high16 v1, 0x3f800000    # 1.0f

    .line 400
    .restart local v1    # "scaleRef":F
    :goto_1
    mul-float v8, v1, v2

    mul-float v9, v1, v3

    div-float v10, v7, v11

    div-float v11, v6, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 398
    .end local v1    # "scaleRef":F
    :cond_0
    div-float v8, v12, v2

    div-float v9, v12, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .restart local v1    # "scaleRef":F
    goto :goto_1

    .line 403
    .end local v1    # "scaleRef":F
    :pswitch_4
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 404
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 407
    :pswitch_5
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 408
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 411
    :pswitch_6
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v0, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 412
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 417
    :pswitch_7
    iget-object v8, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 418
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView;
    .param p1, "x1"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 0
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView;
    .param p1, "x1"    # Lpl/droidsonroids/gif/GifInfoHandle;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method static synthetic b(Lpl/droidsonroids/gif/GifTextureView;)Llgh$b;
    .locals 1
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView;

    .prologue
    .line 48
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Llgh$b;

    return-object v0
.end method

.method static synthetic c(Lpl/droidsonroids/gif/GifTextureView;)F
    .locals 1
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView;

    .prologue
    .line 48
    iget v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    return v0
.end method

.method private setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 269
    return-void
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->b(Lpl/droidsonroids/gif/GifTextureView$b;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->b(Lpl/droidsonroids/gif/GifTextureView$b;)Ljava/io/IOException;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    move-result v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifIOException;->fromCode(I)Lpl/droidsonroids/gif/GifIOException;

    move-result-object v0

    goto :goto_0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 460
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 461
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 290
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V

    .line 291
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 292
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 293
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 296
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 472
    instance-of v1, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v1, :cond_0

    .line 473
    invoke-super {p0, p1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 479
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 476
    check-cast v0, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 477
    .local v0, "ss":Lpl/droidsonroids/gif/GifViewSavedState;
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 478
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    iget-object v2, v0, Lpl/droidsonroids/gif/GifViewSavedState;->mStates:[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, v1, Lpl/droidsonroids/gif/GifTextureView$b;->b:[J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 466
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->o()[J

    move-result-object v1

    iput-object v1, v0, Lpl/droidsonroids/gif/GifTextureView$b;->b:[J

    .line 467
    new-instance v1, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Llgh$b;

    iget-boolean v0, v0, Llgh$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifTextureView$b;->b:[J

    :goto_0
    invoke-direct {v1, v2, v0}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreezesAnimation(Z)V
    .locals 1
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 488
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Llgh$b;

    iput-boolean p1, v0, Llgh$b;->c:Z

    .line 489
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 432
    return-void
.end method

.method public declared-synchronized setInputSource(Llgi;)V
    .locals 1
    .param p1, "inputSource"    # Llgi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Llgi;Lpl/droidsonroids/gif/GifTextureView$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "opaque"    # Z

    .prologue
    .line 282
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 283
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 284
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Llgi;

    invoke-virtual {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->setInputSource(Llgi;)V

    .line 286
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/widget/ImageView$ScaleType;

    .line 366
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 367
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 338
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 339
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    .line 340
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing SurfaceTexture is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing SurfaceTextureListener is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 442
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 443
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 444
    return-void
.end method
