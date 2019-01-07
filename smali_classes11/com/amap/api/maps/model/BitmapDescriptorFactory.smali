.class public final Lcom/amap/api/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "BitmapDescriptorFactory.java"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/mapcore/util/eb$a;->b:Lcom/amap/api/mapcore/util/eb$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/eb$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 4

    .prologue
    const/high16 v2, 0x43a50000    # 330.0f

    const/4 v3, 0x0

    .line 211
    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr v0, p0

    float-to-int v0, v0

    :try_start_0
    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    .line 212
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    move v1, v2

    .line 217
    :goto_0
    const-string/jumbo v0, ""

    .line 218
    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    .line 219
    const-string/jumbo v0, "RED"

    .line 239
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 241
    :goto_2
    return-object v0

    .line 214
    :cond_1
    cmpg-float v1, v0, v3

    if-gez v1, :cond_b

    move v1, v3

    .line 215
    goto :goto_0

    .line 220
    :cond_2
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_3

    .line 221
    const-string/jumbo v0, "ORANGE"

    goto :goto_1

    .line 222
    :cond_3
    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_4

    .line 223
    const-string/jumbo v0, "YELLOW"

    goto :goto_1

    .line 224
    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    .line 225
    const-string/jumbo v0, "GREEN"

    goto :goto_1

    .line 226
    :cond_5
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    .line 227
    const-string/jumbo v0, "CYAN"

    goto :goto_1

    .line 228
    :cond_6
    const/high16 v3, 0x43520000    # 210.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_7

    .line 229
    const-string/jumbo v0, "AZURE"

    goto :goto_1

    .line 230
    :cond_7
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_8

    .line 231
    const-string/jumbo v0, "BLUE"

    goto :goto_1

    .line 232
    :cond_8
    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_9

    .line 233
    const-string/jumbo v0, "VIOLET"

    goto :goto_1

    .line 234
    :cond_9
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a

    .line 235
    const-string/jumbo v0, "MAGENTA"

    goto :goto_1

    .line 236
    :cond_a
    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 237
    const-string/jumbo v0, "ROSE"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 241
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    .line 141
    :try_start_0
    const-class v0, Lcom/amap/api/maps/model/BitmapDescriptorFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/assets/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    if-nez p0, :cond_0

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 259
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 177
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 178
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 181
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 80
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 83
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 103
    invoke-static {v2}, Lcom/amap/api/mapcore/util/en;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 108
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
