.class public Lcom/amap/api/services/busline/BusStationQuery;
.super Ljava/lang/Object;
.source "BusStationQuery.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    .line 22
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/amap/api/services/busline/BusStationQuery;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 27
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    new-instance v0, Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/busline/BusStationQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->setPageNumber(I)V

    .line 117
    iget v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationQuery;->setPageSize(I)V

    .line 119
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    check-cast p1, Lcom/amap/api/services/busline/BusStationQuery;

    .line 152
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 153
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 156
    goto :goto_0

    .line 157
    :cond_5
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 158
    goto :goto_0

    .line 159
    :cond_6
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 160
    goto :goto_0

    .line 161
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 162
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 133
    :goto_1
    add-int/2addr v0, v1

    .line 134
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->d:I

    .line 109
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 93
    if-le p1, v0, :cond_1

    .line 96
    :goto_0
    if-gtz v0, :cond_0

    .line 97
    const/16 v0, 0xa

    .line 99
    :cond_0
    iput v0, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    .line 100
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    if-ne p0, p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 176
    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 178
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 181
    goto :goto_0

    .line 182
    :cond_4
    iget v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    iget v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 183
    goto :goto_0

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 185
    iget-object v2, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/busline/BusStationQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 188
    goto :goto_0
.end method
