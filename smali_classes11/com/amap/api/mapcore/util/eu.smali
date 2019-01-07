.class public Lcom/amap/api/mapcore/util/eu;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/amap/api/mapcore/util/l;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    .line 33
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/eu;->f:Z

    .line 34
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->g:I

    .line 35
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->h:I

    .line 37
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->j:I

    .line 38
    iput v5, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    .line 39
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    .line 43
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    .line 44
    iput v5, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->o:I

    .line 46
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->p:I

    .line 47
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/eu;->q:Z

    .line 52
    iput v3, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    .line 53
    iput v3, p0, Lcom/amap/api/mapcore/util/eu;->s:F

    .line 54
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/eu;->t:Z

    .line 89
    iput-object p2, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    .line 93
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/el;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "ap.data"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 94
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eu;->c:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->c:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore/util/g;->a:F

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eu;->a:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-static {p1}, Lcom/amap/api/mapcore/util/el;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "ap1.data"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eu;->d:Landroid/graphics/Bitmap;

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->d:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore/util/g;->a:F

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eu;->b:Landroid/graphics/Bitmap;

    .line 103
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 104
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->h:I

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->g:I

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-eqz v2, :cond_0

    .line 116
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 124
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 110
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 111
    :goto_2
    :try_start_4
    const-string/jumbo v3, "WaterMarkerView"

    const-string/jumbo v4, "create"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    if-eqz v2, :cond_2

    .line 116
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 122
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 124
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 125
    :catch_3
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 117
    :catch_4
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 116
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 122
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 124
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 127
    :cond_4
    :goto_6
    throw v0

    .line 117
    :catch_5
    move-exception v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 125
    :catch_6
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 114
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 110
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 251
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    .line 265
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    .line 267
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    if-gez v0, :cond_0

    .line 268
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    .line 269
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    if-gez v0, :cond_1

    .line 270
    iput v2, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    .line 272
    :cond_1
    return-void

    .line 253
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eu;->f()V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eu;->e()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->t:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->s:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->o:I

    .line 283
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->h:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    .line 294
    :goto_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->o:I

    .line 295
    return-void

    .line 288
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    goto :goto_0

    .line 292
    :cond_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->f:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->b:Landroid/graphics/Bitmap;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    .line 161
    iput p1, p0, Lcom/amap/api/mapcore/util/eu;->j:I

    .line 162
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->c()V

    .line 163
    return-void
.end method

.method public a(IF)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    .line 198
    iput p1, p0, Lcom/amap/api/mapcore/util/eu;->p:I

    .line 199
    const/4 v0, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->c()V

    .line 218
    return-void

    .line 203
    :pswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->t:Z

    goto :goto_0

    .line 207
    :pswitch_1
    sub-float v0, v2, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->t:Z

    goto :goto_0

    .line 211
    :pswitch_2
    sub-float v0, v2, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->s:F

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/eu;->f:Z

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->invalidate()V

    .line 152
    :goto_1
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string/jumbo v1, "WaterMarkerView"

    const-string/jumbo v2, "changeBitmap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public b()Landroid/graphics/Point;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    iget v2, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    .line 167
    iput p1, p0, Lcom/amap/api/mapcore/util/eu;->o:I

    .line 168
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->c()V

    .line 169
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eu;->d()V

    .line 228
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->invalidate()V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/eu;->m:I

    .line 173
    iput p1, p0, Lcom/amap/api/mapcore/util/eu;->n:I

    .line 174
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->c()V

    .line 175
    return-void
.end method

.method public d(I)F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 178
    const/4 v0, 0x0

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return v0

    .line 182
    :pswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    goto :goto_0

    .line 185
    :pswitch_1
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->r:F

    sub-float v0, v1, v0

    .line 186
    goto :goto_0

    .line 188
    :pswitch_2
    iget v0, p0, Lcom/amap/api/mapcore/util/eu;->s:F

    sub-float v0, v1, v0

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eu;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->q:Z

    if-nez v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/eu;->d()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/eu;->q:Z

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eu;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/eu;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/eu;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/eu;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string/jumbo v1, "WaterMarkerView"

    const-string/jumbo v2, "onDraw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
