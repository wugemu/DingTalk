.class public Lcom/amap/api/services/a/d;
.super Lcom/amap/api/services/a/b;
.source "BusSearchServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/services/a/b",
        "<TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/d;->h:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/d;->i:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/d;->j:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/Object;
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
    .line 94
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "suggestion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-static {v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/services/a/d;->j:Ljava/util/List;

    .line 99
    invoke-static {v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/d;->i:Ljava/util/List;

    .line 101
    :cond_0
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/d;->h:I

    .line 102
    iget-object v1, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v1, :cond_1

    .line 103
    invoke-static {v0}, Lcom/amap/api/services/a/n;->i(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineQuery;

    iget v2, p0, Lcom/amap/api/services/a/d;->h:I

    iget-object v3, p0, Lcom/amap/api/services/a/d;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/d;->i:Ljava/util/List;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/amap/api/services/busline/BusLineResult;->createPagedResult(Lcom/amap/api/services/busline/BusLineQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 107
    :cond_1
    invoke-static {v0}, Lcom/amap/api/services/a/n;->e(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusStationQuery;

    iget v2, p0, Lcom/amap/api/services/a/d;->h:I

    iget-object v3, p0, Lcom/amap/api/services/a/d;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/d;->i:Ljava/util/List;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/amap/api/services/busline/BusStationResult;->createPagedResult(Lcom/amap/api/services/busline/BusStationQuery;ILjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)Lcom/amap/api/services/busline/BusStationResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string/jumbo v1, "BusSearchServerHandler"

    const-string/jumbo v2, "paseJSON"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string/jumbo v0, "output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineQuery;

    .line 132
    const-string/jumbo v2, "&extensions=all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getCategory()Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    move-result-object v2

    sget-object v3, Lcom/amap/api/services/busline/BusLineQuery$SearchType;->BY_LINE_ID:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    if-ne v2, v3, :cond_0

    .line 135
    const-string/jumbo v0, "&id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineQuery;

    .line 136
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "&key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/services/a/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/aw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-virtual {p0, v2}, Lcom/amap/api/services/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string/jumbo v3, "&city="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&keywords="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/services/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&offset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusStationQuery;

    .line 154
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v2}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 156
    invoke-virtual {p0, v2}, Lcom/amap/api/services/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string/jumbo v3, "&city="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&keywords="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/services/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&offset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&page="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v1, ""

    .line 81
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getCategory()Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    move-result-object v0

    sget-object v2, Lcom/amap/api/services/busline/BusLineQuery$SearchType;->BY_LINE_ID:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    if-ne v0, v2, :cond_0

    .line 83
    const-string/jumbo v0, "lineid"

    .line 88
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/bus/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getCategory()Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    move-result-object v0

    sget-object v2, Lcom/amap/api/services/busline/BusLineQuery$SearchType;->BY_LINE_NAME:Lcom/amap/api/services/busline/BusLineQuery$SearchType;

    if-ne v0, v2, :cond_2

    .line 85
    const-string/jumbo v0, "linename"

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v0, "stopname"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
