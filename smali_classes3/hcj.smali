.class public final Lhcj;
.super Ljava/lang/Object;
.source "TFSImageStrategy.java"


# static fields
.field private static a:[I

.field private static b:[I

.field private static c:Lhcj;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lhcj;->a:[I

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lhcj;->b:[I

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lhcj;->c:Lhcj;

    .line 46
    const-string/jumbo v0, ".jpg"

    sput-object v0, Lhcj;->d:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "_.webp"

    sput-object v0, Lhcj;->e:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "."

    sput-object v0, Lhcj;->f:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lhcj;->g:Ljava/util/Map;

    return-void

    .line 33
    .line 36
    :array_0
    .array-data 4
        0x18
        0x1e
        0x28
        0x3c
        0x40
        0x46
        0x50
        0x5a
        0x64
        0x6e
        0x78
        0x80
        0xa0
        0xaa
        0xe6
        0xf0
        0xfa
        0x136
        0x1ae
        0x1ea
        0x280
        0x29e
    .end array-data

    :array_1
    .array-data 4
        0x6e
        0x96
        0xaa
        0xdc
        0xf0
        0x122
        0x12c
        0x1c2
        0x23a
        0x244
        0x26c
        0x316
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lhcj;->h:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcj;->i:Z

    .line 84
    iget v0, p0, Lhcj;->h:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lhcj;->b()V

    .line 87
    :cond_0
    return-void
.end method

.method private a(IZ)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "higher"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 314
    sget-object v1, Lhcj;->a:[I

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lhcj;->a([IIZ)I

    move-result v0

    .line 315
    .local v0, "pos":I
    sget-object v1, Lhcj;->a:[I

    aget v1, v1, v0

    return v1
.end method

.method private static a([IIZ)I
    .locals 5
    .param p0, "srcArray"    # [I
    .param p1, "des"    # I
    .param p2, "higher"    # Z

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "low":I
    array-length v3, p0

    add-int/lit8 v0, v3, -0x1

    .line 329
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 330
    add-int v3, v1, v0

    div-int/lit8 v2, v3, 0x2

    .line 331
    .local v2, "middle":I
    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    .line 349
    .end local v2    # "middle":I
    :goto_1
    return v2

    .line 333
    .restart local v2    # "middle":I
    :cond_0
    aget v3, p0, v2

    if-ge p1, v3, :cond_1

    .line 334
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 336
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 338
    goto :goto_0

    .line 339
    .end local v2    # "middle":I
    :cond_2
    if-gez v0, :cond_3

    .line 340
    const/4 v2, 0x0

    goto :goto_1

    .line 341
    :cond_3
    if-eqz p2, :cond_5

    .line 342
    aget v3, p0, v0

    if-le p1, v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_4

    .line 343
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_2
    move v2, v0

    .line 349
    goto :goto_1

    .line 346
    :cond_5
    aget v3, p0, v0

    if-ge p1, v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_4

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static declared-synchronized a()Lhcj;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lhcj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhcj;->c:Lhcj;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lhcj;

    invoke-direct {v0}, Lhcj;-><init>()V

    sput-object v0, Lhcj;->c:Lhcj;

    .line 75
    :cond_0
    sget-object v0, Lhcj;->c:Lhcj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-eqz p0, :cond_1

    .line 102
    const-string/jumbo v1, "static.dingtalk.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "i01.lw.aliimg.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "down.dingtalk.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 104
    :cond_1
    return v0
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 2
    .param p0, "segment"    # [Ljava/lang/String;

    .prologue
    .line 358
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "down.dingtalk.com"

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ddmedia"

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 90
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 92
    .local v2, "metric":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lhcj;->h:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "exceptWidth"    # I
    .param p3, "exceptHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    const-string/jumbo v8, "TFSImageStrategy"

    const-string/jumbo v9, "call TFSImageStrategy\'s adapte2Phone method use image url is null"

    invoke-static {v8, v9}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 p1, 0x0

    .line 190
    .end local p1    # "imageUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 124
    .restart local p1    # "imageUrl":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "imageUrlKey":Ljava/lang/String;
    sget-object v8, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, "mapImageUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object p1, v5

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "segment":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    .line 134
    const-string/jumbo v8, "TFSImageStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "call TFSImageStrategy\'s adapte2Phone method use err url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "http:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "https:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    :cond_4
    invoke-static {v7}, Lhcj;->a([Ljava/lang/String;)Z

    move-result v0

    .line 146
    .local v0, "authMatched":Z
    if-nez v0, :cond_5

    const/4 v8, 0x2

    aget-object v8, v7, v8

    const-string/jumbo v9, "static.dingtalk.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x2

    aget-object v8, v7, v8

    const-string/jumbo v9, "i01.lw.aliimg.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 147
    const-string/jumbo v8, "TFSImageStrategy"

    const-string/jumbo v9, "call TFSImageStrategy\'s adapte2Phone use another host, may influence network performace"

    invoke-static {v8, v9}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_5
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v2, v7, v8

    .line 153
    .local v2, "filename":Ljava/lang/String;
    sget-object v8, Lhcj;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "index":I
    if-gez v4, :cond_6

    .line 155
    const-string/jumbo v8, "TFSImageStrategy"

    const-string/jumbo v9, "in TFSImageStrategy\'s adapte2Phone imageUrl dose not have file extension"

    invoke-static {v8, v9}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 161
    .local v6, "newImageUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x316

    if-eq p2, v8, :cond_9

    .line 162
    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lhcj;->h:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_8

    .line 163
    invoke-direct {p0}, Lhcj;->b()V

    .line 167
    :cond_8
    const-string/jumbo v8, "_"

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 168
    int-to-float v8, p2

    iget v9, p0, Lhcj;->h:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lhcj;->a(IZ)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 169
    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 170
    int-to-float v8, p3

    iget v9, p0, Lhcj;->h:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lhcj;->a(IZ)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 171
    const-string/jumbo v8, "q90"

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 172
    const-string/jumbo v8, "g"

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 173
    sget-object v8, Lhcj;->d:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 176
    invoke-static {}, Lixh;->a()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 177
    sget-object v8, Lhcj;->e:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 182
    :cond_9
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    sget-object v8, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v8, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_a

    .line 186
    sget-object v8, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    move-object p1, v5

    .line 190
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 29
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "useWebP"    # Z

    .prologue
    .line 212
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 213
    const-string/jumbo v25, "TFSImageStrategy"

    const-string/jumbo v26, "call TFSImageStrategy\'s adapte2Phone method use image url is null"

    invoke-static/range {v25 .. v26}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 p1, 0x0

    .line 310
    .end local p1    # "imageUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 217
    .restart local p1    # "imageUrl":Ljava/lang/String;
    :cond_1
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object p1, v25, v26

    const/16 v26, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, "imageUrlKey":Ljava/lang/String;
    sget-object v25, Lhcj;->g:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 220
    .local v13, "mapImageUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 p1, v13

    .line 221
    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v25, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 226
    .local v20, "segment":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 227
    const-string/jumbo v25, "TFSImageStrategy"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "call TFSImageStrategy\'s adapte2Phone method use err url: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_3
    const/16 v25, 0x0

    aget-object v25, v20, v25

    const-string/jumbo v26, "http:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    const/16 v25, 0x0

    aget-object v25, v20, v25

    const-string/jumbo v26, "https:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 236
    :cond_4
    invoke-static/range {v20 .. v20}, Lhcj;->a([Ljava/lang/String;)Z

    move-result v5

    .line 239
    .local v5, "authMatched":Z
    if-nez v5, :cond_5

    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string/jumbo v26, "static.dingtalk.com"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    const/16 v25, 0x2

    aget-object v25, v20, v25

    const-string/jumbo v26, "i01.lw.aliimg.com"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 240
    const-string/jumbo v25, "TFSImageStrategy"

    const-string/jumbo v26, "call TFSImageStrategy\'s adapte2Phone use another host, may influence network performace"

    invoke-static/range {v25 .. v26}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v9, v20, v25

    .line 246
    .local v9, "filename":Ljava/lang/String;
    sget-object v25, Lhcj;->f:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 247
    .local v12, "index":I
    if-gez v12, :cond_6

    .line 248
    const-string/jumbo v25, "TFSImageStrategy"

    const-string/jumbo v26, "in TFSImageStrategy\'s adapte2Phone imageUrl dose not have file extension"

    invoke-static/range {v25 .. v26}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v16

    .line 254
    .local v16, "newImageUrl":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p4, :cond_8

    .line 255
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x316

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 1320
    :cond_7
    sget-object v25, Lhcj;->b:[I

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lhcj;->a([IIZ)I

    move-result v25

    .line 1321
    sget-object v26, Lhcj;->b:[I

    aget v23, v26, v25

    .line 260
    .local v23, "targetWidth":I
    move/from16 v22, p3

    .line 262
    .local v22, "targetHeight":I
    const-string/jumbo v25, "_"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 263
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 264
    const-string/jumbo v25, "x"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 265
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 266
    const-string/jumbo v25, "q90"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 267
    const-string/jumbo v25, "g"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 268
    sget-object v25, Lhcj;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 271
    const/16 v18, 0x0

    .line 273
    .local v18, "resultRect":Landroid/graphics/RectF;
    const/4 v10, 0x0

    .line 275
    .local v10, "h":I
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v15

    .line 276
    .local v15, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v15}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v24

    .line 277
    .local v24, "w":I
    invoke-virtual {v15}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v10

    .line 278
    new-instance v6, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 279
    .local v6, "bound":Landroid/graphics/RectF;
    new-instance v21, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v10

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    .local v21, "src":Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 281
    .local v14, "matrix":Landroid/graphics/Matrix;
    sget-object v25, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v6, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 282
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v18    # "resultRect":Landroid/graphics/RectF;
    .local v19, "resultRect":Landroid/graphics/RectF;
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v19

    .line 289
    .end local v6    # "bound":Landroid/graphics/RectF;
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v19    # "resultRect":Landroid/graphics/RectF;
    .end local v21    # "src":Landroid/graphics/RectF;
    .end local v24    # "w":I
    .restart local v18    # "resultRect":Landroid/graphics/RectF;
    :goto_1
    invoke-static {}, Lixh;->a()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 290
    if-eqz v18, :cond_b

    .line 292
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v25

    int-to-float v0, v10

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 293
    .local v17, "realHeight":I
    :goto_2
    const/16 v25, 0x1000

    move/from16 v0, v17

    move/from16 v1, v25

    if-gt v0, v1, :cond_8

    .line 294
    sget-object v25, Lhcj;->e:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 303
    .end local v10    # "h":I
    .end local v17    # "realHeight":I
    .end local v18    # "resultRect":Landroid/graphics/RectF;
    .end local v22    # "targetHeight":I
    .end local v23    # "targetWidth":I
    :cond_8
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 304
    sget-object v25, Lhcj;->g:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v25, Lhcj;->g:Ljava/util/Map;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->size()I

    move-result v25

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 306
    sget-object v25, Lhcj;->g:Ljava/util/Map;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 307
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v25, Lhcj;->g:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 p1, v13

    .line 310
    goto/16 :goto_0

    .line 284
    .restart local v10    # "h":I
    .restart local v18    # "resultRect":Landroid/graphics/RectF;
    .restart local v22    # "targetHeight":I
    .restart local v23    # "targetWidth":I
    :catch_0
    move-exception v7

    .line 285
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    move/from16 v17, v10

    .line 292
    goto :goto_2

    .line 297
    :cond_b
    sget-object v25, Lhcj;->e:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 284
    .end local v18    # "resultRect":Landroid/graphics/RectF;
    .restart local v6    # "bound":Landroid/graphics/RectF;
    .restart local v14    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .restart local v19    # "resultRect":Landroid/graphics/RectF;
    .restart local v21    # "src":Landroid/graphics/RectF;
    .restart local v24    # "w":I
    :catch_1
    move-exception v7

    move-object/from16 v18, v19

    .end local v19    # "resultRect":Landroid/graphics/RectF;
    .restart local v18    # "resultRect":Landroid/graphics/RectF;
    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "useWebp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 198
    const/16 v0, 0x1c2

    const/16 v1, 0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
