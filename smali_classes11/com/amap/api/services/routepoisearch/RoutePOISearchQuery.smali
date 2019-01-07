.class public Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
.super Ljava/lang/Object;
.source "RoutePOISearchQuery.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V
    .locals 1

    .prologue
    const/16 v0, 0x1f4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 31
    iput-object p2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 32
    iput p3, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    .line 33
    iput-object p4, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    .line 34
    if-gtz p5, :cond_0

    .line 35
    const/16 v0, 0xfa

    iput v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    if-le p5, v0, :cond_1

    .line 37
    iput v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    goto :goto_0

    .line 39
    :cond_1
    iput p5, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget v3, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    iget-object v4, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    iget v5, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;I)V

    .line 102
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "RoutePOISearchQuery"

    const-string/jumbo v2, "RoutePOISearchQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->c:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->e:I

    return v0
.end method

.method public getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->d:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object v0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method
