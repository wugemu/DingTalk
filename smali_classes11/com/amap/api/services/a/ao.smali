.class public Lcom/amap/api/services/a/ao;
.super Ljava/lang/Object;
.source "InputtipsSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IInputtipsSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

.field private c:Landroid/os/Handler;

.field private d:Lcom/amap/api/services/help/InputtipsQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/amap/api/services/a/ao;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 41
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    .line 53
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/help/InputtipsQuery;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string/jumbo v1, "Inputtips"

    const-string/jumbo v2, "requestInputtips"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    throw v0

    .line 148
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    new-instance v0, Lcom/amap/api/services/a/m;

    iget-object v1, p0, Lcom/amap/api/services/a/ao;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/m;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    .line 152
    invoke-virtual {v0}, Lcom/amap/api/services/a/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method public requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/a/ao;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 133
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    new-instance v0, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/help/InputtipsQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    .line 137
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v0, p3}, Lcom/amap/api/services/help/InputtipsQuery;->setType(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/amap/api/services/a/ao;->requestInputtipsAsyn()V

    .line 139
    return-void
.end method

.method public requestInputtipsAsyn()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/amap/api/services/a/ao$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/ao$1;-><init>(Lcom/amap/api/services/a/ao;)V

    .line 105
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$1;->start()V

    .line 106
    return-void
.end method

.method public setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amap/api/services/a/ao;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 79
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/services/a/ao;->d:Lcom/amap/api/services/help/InputtipsQuery;

    .line 70
    return-void
.end method
