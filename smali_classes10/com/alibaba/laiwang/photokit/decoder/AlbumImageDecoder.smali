.class public final Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;
.super Lhaw;
.source "AlbumImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:I

.field private f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

.field private g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b:I

    .line 39
    sget v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->d:I

    return-void
.end method

.method public constructor <init>(ILcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;)V
    .locals 0
    .param p1, "maxBitmapSize"    # I
    .param p2, "mode"    # Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    .prologue
    .line 52
    invoke-direct {p0}, Lhaw;-><init>()V

    .line 53
    iput p1, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->e:I

    .line 54
    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    .line 55
    return-void
.end method

.method private a(I)F
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    int-to-float v0, p1

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 195
    :cond_1
    rsub-int v0, p1, 0xb4

    int-to-float v0, v0

    goto :goto_0

    .line 197
    :cond_2
    int-to-float v0, p1

    goto :goto_0
.end method

.method private a(IIII)Landroid/graphics/RectF;
    .locals 5
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method private b(I)F
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 206
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0
.end method

.method private c(I)I
    .locals 2
    .param p1, "w"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v1, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Right:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    .end local p1    # "w":I
    :goto_0
    return p1

    .restart local p1    # "w":I
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int p1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->f:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    sget-object v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Normal:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-virtual {v6, v7}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 87
    .restart local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez p1, :cond_1

    .line 88
    const/4 p1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 91
    invoke-static {v6, v7, v8}, Lgzt;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 93
    .local v5, "result":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 94
    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->g:Ljava/lang/Integer;

    .line 98
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 100
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 107
    .local v3, "pathRight":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 1219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 109
    sub-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 2219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 111
    sub-int/2addr v6, v7

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 3219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 111
    sub-int/2addr v6, v7

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 4219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 113
    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    .line 114
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v9, v9

    .line 5219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 114
    sub-int/2addr v8, v9

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v9, v9

    .line 6219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 114
    add-int/2addr v8, v9

    .line 115
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 111
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(IIII)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 116
    .local v4, "rectF":Landroid/graphics/RectF;
    const/16 v6, 0x5a

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(I)F

    move-result v6

    const/16 v7, -0x5a

    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b(I)F

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 118
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 7219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 118
    sub-int/2addr v6, v7

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 8219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 118
    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    .line 119
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 9219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 120
    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b:I

    int-to-float v8, v8

    .line 10219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 120
    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 118
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 11219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 124
    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b:I

    int-to-float v8, v8

    .line 12219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 124
    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->d:I

    int-to-float v8, v8

    .line 13219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 124
    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 123
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 14219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 127
    sub-int/2addr v6, v7

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 15219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 127
    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    .line 128
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 16219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 129
    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b:I

    int-to-float v8, v8

    .line 17219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 129
    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->d:I

    int-to-float v8, v8

    .line 18219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 129
    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 127
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 19219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 132
    sub-int/2addr v6, v7

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 20219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 132
    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 21219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 133
    int-to-float v7, v7

    .line 132
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    new-instance v4, Landroid/graphics/RectF;

    .end local v4    # "rectF":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v7, v7

    .line 22219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 136
    sub-int/2addr v6, v7

    sget v7, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v7, v7

    .line 23219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    .line 136
    sub-int/2addr v6, v7

    const/4 v7, 0x0

    .line 138
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c:I

    int-to-float v9, v9

    .line 24219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 138
    sub-int/2addr v8, v9

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v9, v9

    .line 25219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 138
    add-int/2addr v8, v9

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v9, v9

    .line 26219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 139
    mul-int/lit8 v9, v9, 0x2

    .line 136
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(IIII)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 140
    .restart local v4    # "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(I)F

    move-result v6

    const/16 v7, -0x5a

    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b(I)F

    move-result v7

    invoke-virtual {v3, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 143
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 149
    .local v2, "pathLeft":Landroid/graphics/Path;
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    sget v6, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v6, v6

    .line 27219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v6

    .line 152
    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    new-instance v4, Landroid/graphics/RectF;

    .end local v4    # "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 28219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 155
    mul-int/lit8 v8, v8, 0x2

    sget v9, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v9, v9

    .line 29219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v9

    .line 155
    mul-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(IIII)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 156
    .restart local v4    # "rectF":Landroid/graphics/RectF;
    const/16 v6, 0x10e

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(I)F

    move-result v6

    const/16 v7, -0x5a

    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b(I)F

    move-result v7

    invoke-virtual {v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 159
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 30219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 159
    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    new-instance v4, Landroid/graphics/RectF;

    .end local v4    # "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 31219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 162
    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sget v8, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a:I

    int-to-float v8, v8

    .line 32219
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    .line 162
    mul-int/lit8 v8, v8, 0x2

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 162
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(IIII)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 164
    .restart local v4    # "rectF":Landroid/graphics/RectF;
    const/16 v6, 0xb4

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(I)F

    move-result v6

    const/16 v7, -0x5a

    invoke-direct {p0, v7}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->b(I)F

    move-result v7

    invoke-virtual {v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 167
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->c(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 171
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 173
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object p1, v5

    .line 179
    goto/16 :goto_0
.end method

.method protected final a(II)Lhbc;
    .locals 7
    .param p1, "sWidth"    # I
    .param p2, "sHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 60
    :cond_0
    const/4 v5, 0x0

    .line 72
    :goto_0
    return-object v5

    .line 63
    :cond_1
    iget v5, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->e:I

    int-to-float v5, v5

    int-to-float v6, p1

    div-float v3, v5, v6

    .line 64
    .local v3, "xRatio":F
    iget v5, p0, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->e:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v4, v5, v6

    .line 65
    .local v4, "yRatio":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 66
    .local v1, "oRatio":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 67
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    :cond_2
    int-to-float v5, p1

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 71
    .local v2, "width":I
    int-to-float v5, p2

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 72
    .local v0, "height":I
    new-instance v5, Lhbc;

    invoke-direct {v5, v2, v0}, Lhbc;-><init>(II)V

    goto :goto_0
.end method
