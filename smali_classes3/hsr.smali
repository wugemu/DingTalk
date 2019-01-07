.class public final Lhsr;
.super Ljava/lang/Object;
.source "PhotoDealImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhsr$a;,
        Lhsr$b;
    }
.end annotation


# static fields
.field private static e:Lhsr$a;


# instance fields
.field final a:Landroid/graphics/Bitmap$Config;

.field b:I

.field c:I

.field d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lhsr;->a:Landroid/graphics/Bitmap$Config;

    .line 33
    return-void
.end method

.method static a(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 169
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 170
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 171
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 172
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 173
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    .line 174
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    .line 176
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method public static declared-synchronized a()Lhsr;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lhsr;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lhsr;

    invoke-direct {v0}, Lhsr;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 206
    .local v0, "imageStream":Ljava/io/BufferedInputStream;
    return-object v0
.end method

.method static b(IIII)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I

    .prologue
    .line 182
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 201
    .end local p2    # "actualPrimary":I
    :goto_0
    return p2

    .line 187
    .restart local p2    # "actualPrimary":I
    :cond_0
    if-nez p0, :cond_1

    .line 188
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 189
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_0

    .line 192
    .end local v0    # "ratio":D
    :cond_1
    if-nez p1, :cond_2

    move p2, p0

    .line 193
    goto :goto_0

    .line 196
    :cond_2
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 198
    .restart local v0    # "ratio":D
    move v2, p0

    .local v2, "resized":I
    int-to-double v4, p0

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 199
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_3
    move p2, v2

    .line 201
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Landroid/widget/ImageView;Lhsr$b;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "mLoadListener"    # Lhsr$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 37
    .local v2, "maxMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    .line 38
    .local v6, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 39
    .local v0, "freeMemory":J
    sub-long v8, v2, v6

    add-long/2addr v8, v0

    const-wide/16 v10, 0x400

    div-long v4, v8, v10

    .line 41
    .local v4, "restMemory":J
    const-wide/16 v8, 0xc

    div-long v8, v4, v8

    long-to-int v8, v8

    iput v8, p0, Lhsr;->d:I

    .line 44
    sget-object v8, Lhsr;->e:Lhsr$a;

    if-eqz v8, :cond_0

    .line 45
    sget-object v8, Lhsr;->e:Lhsr$a;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lhsr$a;->cancel(Z)Z

    .line 47
    :cond_0
    new-instance v8, Lhsr$a;

    invoke-direct {v8, p0, p1, p2, p3}, Lhsr$a;-><init>(Lhsr;Ljava/lang/String;Landroid/widget/ImageView;Lhsr$b;)V

    .line 48
    sput-object v8, Lhsr;->e:Lhsr$a;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Lhsr$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 36
    .end local v0    # "freeMemory":J
    .end local v2    # "maxMemory":J
    .end local v4    # "restMemory":J
    .end local v6    # "totalMemory":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
