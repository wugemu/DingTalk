.class public Lcom/amap/api/services/a/aj;
.super Ljava/lang/Object;
.source "BusLineSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusLineSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Lcom/amap/api/services/busline/BusLineQuery;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->g:Landroid/os/Handler;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    .line 44
    invoke-virtual {p2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 45
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->g:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/aj;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/busline/BusLineResult;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/services/a/aj;->e:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget v0, p0, Lcom/amap/api/services/a/aj;->e:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/aj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/amap/api/services/a/aj;->e:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/amap/api/services/busline/BusLineResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/aj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object v0
.end method

.method public searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
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
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 62
    invoke-direct {p0}, Lcom/amap/api/services/a/aj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string/jumbo v1, "BusLineSearch"

    const-string/jumbo v2, "searchBusLine"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v1, p0, Lcom/amap/api/services/a/aj;->d:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/aj;->e:I

    .line 68
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/aj;->e:I

    if-nez v0, :cond_3

    .line 73
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/aj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    .line 75
    invoke-direct {p0, v0}, Lcom/amap/api/services/a/aj;->a(Lcom/amap/api/services/busline/BusLineResult;)V

    .line 84
    :cond_2
    :goto_0
    return-object v0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/aj;->b(I)Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/amap/api/services/a/d;

    iget-object v1, p0, Lcom/amap/api/services/a/aj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Lcom/amap/api/services/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    .line 81
    iget-object v1, p0, Lcom/amap/api/services/a/aj;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public searchBusLineAsyn()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/aj$1;

    invoke-direct {v1, p0}, Lcom/amap/api/services/a/aj$1;-><init>(Lcom/amap/api/services/a/aj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method public setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amap/api/services/a/aj;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 119
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iput-object p1, p0, Lcom/amap/api/services/a/aj;->c:Lcom/amap/api/services/busline/BusLineQuery;

    .line 156
    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aj;->d:Lcom/amap/api/services/busline/BusLineQuery;

    .line 158
    :cond_0
    return-void
.end method
