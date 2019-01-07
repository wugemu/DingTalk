.class public Lcom/amap/api/services/a/al;
.super Ljava/lang/Object;
.source "CloudSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/ICloudSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

.field private c:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/cloud/CloudResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->f:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/al;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_2
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/y;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v2, Lcom/amap/api/services/a/f;

    iget-object v3, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/services/a/f;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/y;)V

    .line 145
    invoke-virtual {v2}, Lcom/amap/api/services/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudItemDetail;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string/jumbo v2, "CloudSearch"

    const-string/jumbo v3, "searchCloudDetail"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    instance-of v2, v0, Lcom/amap/api/services/core/AMapException;

    if-eqz v2, :cond_4

    .line 149
    check-cast v0, Lcom/amap/api/services/core/AMapException;

    throw v0

    .line 151
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :goto_0
    const-string/jumbo v2, "CloudSearch"

    const-string/jumbo v3, "searchCloud"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    instance-of v2, v0, Lcom/amap/api/services/core/AMapException;

    if-eqz v2, :cond_3

    .line 95
    check-cast v0, Lcom/amap/api/services/core/AMapException;

    throw v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/al;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {p1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/al;->d:I

    .line 74
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->clone()Lcom/amap/api/services/cloud/CloudSearch$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    .line 75
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/al;->d:I

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/amap/api/services/a/g;

    iget-object v2, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/amap/api/services/a/g;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 82
    invoke-virtual {v0}, Lcom/amap/api/services/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/cloud/CloudResult;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :goto_1
    return-object v0

    .line 85
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/al;->a(I)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v1

    .line 86
    if-nez v1, :cond_4

    .line 87
    new-instance v0, Lcom/amap/api/services/a/g;

    iget-object v2, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/amap/api/services/a/g;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 88
    invoke-virtual {v0}, Lcom/amap/api/services/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudResult;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    .line 199
    iget v0, p0, Lcom/amap/api/services/a/al;->d:I

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/api/services/a/al;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/amap/api/services/a/al;->d:I

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 215
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Bound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Rectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 229
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-gez v3, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v4, v2

    if-gez v0, :cond_0

    .line 238
    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v2

    move v0, v1

    .line 240
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 241
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(I)Lcom/amap/api/services/cloud/CloudResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/al;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/al;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudResult;

    return-object v0
.end method

.method public searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/amap/api/services/a/al$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/al$1;-><init>(Lcom/amap/api/services/a/al;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    .line 128
    invoke-virtual {v0}, Lcom/amap/api/services/a/al$1;->start()V

    .line 129
    return-void
.end method

.method public searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/amap/api/services/a/al$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/services/a/al$2;-><init>(Lcom/amap/api/services/a/al;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lcom/amap/api/services/a/al$2;->start()V

    .line 185
    return-void
.end method

.method public setOnCloudSearchListener(Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 62
    return-void
.end method
