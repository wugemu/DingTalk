.class public Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RideRouteQuery"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1369
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    .line 1358
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 1310
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    .line 1311
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1427
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V

    return-object v0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    const-string/jumbo v1, "RouteSearch"

    const-string/jumbo v2, "RideRouteQueryclone"

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
    .line 1295
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1404
    if-ne p0, p1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v0

    .line 1406
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1407
    goto :goto_0

    .line 1408
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1409
    goto :goto_0

    .line 1410
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 1411
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_4

    .line 1412
    invoke-static {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1413
    goto :goto_0

    .line 1414
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-static {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 1415
    goto :goto_0

    .line 1416
    :cond_5
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    invoke-static {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1417
    goto :goto_0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 1390
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    add-int/2addr v0, v1

    .line 1391
    return v0

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1347
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    return-void
.end method
