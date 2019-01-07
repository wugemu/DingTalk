.class public Lcom/amap/api/services/a/am;
.super Ljava/lang/Object;
.source "DistrictSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IDistrictSearch;


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/district/DistrictResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

.field private d:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private e:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/am;->a:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/am;->g:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/district/DistrictResult;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    .line 50
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/am;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/services/a/am;->e:I

    iget-object v1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Lcom/amap/api/services/district/DistrictResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/amap/api/services/a/am;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 100
    invoke-direct {p0}, Lcom/amap/api/services/a/am;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    iput-object v1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 106
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/a/am;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->weakEquals(Lcom/amap/api/services/district/DistrictSearchQuery;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/am;->e:I

    .line 108
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/am;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 109
    sget-object v0, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/am;->e:I

    if-nez v0, :cond_4

    .line 115
    new-instance v0, Lcom/amap/api/services/a/j;

    iget-object v1, p0, Lcom/amap/api/services/a/am;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 116
    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/j;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 117
    invoke-virtual {v0}, Lcom/amap/api/services/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    .line 118
    if-nez v0, :cond_3

    .line 140
    :cond_2
    :goto_0
    return-object v0

    .line 121
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictResult;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/am;->e:I

    .line 122
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/am;->a(Lcom/amap/api/services/district/DistrictResult;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "DistrictSearch"

    const-string/jumbo v2, "searchDistrict"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    throw v0

    .line 124
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/am;->a(I)Lcom/amap/api/services/district/DistrictResult;

    move-result-object v0

    .line 125
    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lcom/amap/api/services/a/j;

    iget-object v1, p0, Lcom/amap/api/services/a/am;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 127
    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/j;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 128
    invoke-virtual {v0}, Lcom/amap/api/services/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    .line 129
    iget-object v1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 132
    iget v1, p0, Lcom/amap/api/services/a/am;->e:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/amap/api/services/a/am;->e:I

    iget-object v2, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 133
    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 134
    sget-object v1, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amap/api/services/a/am;->b()Lcom/amap/api/services/district/DistrictResult;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amap/api/services/a/am;->e:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/am;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/am;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/a/am;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/amap/api/services/district/DistrictResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/am;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/am;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object v0
.end method

.method public searchDistrictAnsy()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/amap/api/services/a/am;->searchDistrictAsyn()V

    .line 190
    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/amap/api/services/a/am$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/am$1;-><init>(Lcom/amap/api/services/a/am;)V

    .line 179
    invoke-virtual {v0}, Lcom/amap/api/services/a/am$1;->start()V

    .line 181
    return-void
.end method

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amap/api/services/a/am;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    .line 200
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amap/api/services/a/am;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 74
    return-void
.end method
