.class public final Lcom/amap/api/maps/model/LatLngBounds;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/LatLngBoundsCreator;


# instance fields
.field private final a:I

.field public final northeast:Lcom/amap/api/maps/model/LatLng;

.field public final southwest:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amap/api/maps/model/LatLngBoundsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/LatLngBoundsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/LatLngBounds;->CREATOR:Lcom/amap/api/maps/model/LatLngBoundsCreator;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v2, 0x1

    .line 25
    if-nez p2, :cond_1

    .line 26
    :try_start_0
    new-instance v2, Lcom/amap/api/maps/model/RuntimeRemoteException;

    const-string/jumbo v3, "null southwest"

    invoke-direct {v2, v3}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    const-string/jumbo v3, "LatLngBounds"

    const-string/jumbo v4, "the structure parameters are illegal!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v0

    .line 42
    :cond_0
    if-eqz v2, :cond_3

    :goto_0
    iput p1, p0, Lcom/amap/api/maps/model/LatLngBounds;->a:I

    .line 43
    if-eqz v2, :cond_4

    :goto_1
    iput-object p2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 44
    if-eqz v2, :cond_5

    :goto_2
    iput-object p3, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 45
    return-void

    .line 29
    :cond_1
    if-nez p3, :cond_2

    .line 30
    :try_start_1
    new-instance v2, Lcom/amap/api/maps/model/RuntimeRemoteException;

    const-string/jumbo v3, "null northeast"

    invoke-direct {v2, v3}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_2
    iget-wide v4, p3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 35
    new-instance v2, Lcom/amap/api/maps/model/RuntimeRemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "southern latitude exceeds northern latitude ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move p1, v0

    .line 42
    goto :goto_0

    :cond_4
    move-object p2, v1

    .line 43
    goto :goto_1

    :cond_5
    move-object p3, v1

    .line 44
    goto :goto_2
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(ILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    .line 57
    return-void
.end method

.method static synthetic a(DD)D
    .locals 2

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps/model/LatLngBounds;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)Z
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/maps/model/LatLngBounds;)Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    .line 150
    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-double/2addr v4, v6

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    .line 152
    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    .line 154
    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 157
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(DD)D
    .locals 2

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps/model/LatLngBounds;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private static c(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 203
    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private static d(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 208
    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->a:I

    return v0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_3

    .line 92
    :cond_2
    const-string/jumbo v1, "LatLngBounds"

    const-string/jumbo v2, "current LatLngBounds is invalid, please check the structure parameters are legal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_3
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->a(D)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 98
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps/model/LatLngBounds;->b(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLngBounds;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 115
    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/LatLngBounds;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    if-ne p0, p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_3
    instance-of v2, p1, Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v2, :cond_4

    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_4
    check-cast p1, Lcom/amap/api/maps/model/LatLngBounds;

    .line 249
    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 250
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final including(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-object p0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_2

    .line 175
    :cond_1
    const-string/jumbo v0, "LatLngBounds"

    const-string/jumbo v1, "current LatLngBounds is invalid, please check the structure parameters are legal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 180
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 181
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 182
    iget-object v0, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 183
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 184
    invoke-direct {p0, v4, v5}, Lcom/amap/api/maps/model/LatLngBounds;->b(D)Z

    move-result v8

    if-nez v8, :cond_4

    .line 185
    invoke-static {v0, v1, v4, v5}, Lcom/amap/api/maps/model/LatLngBounds;->c(DD)D

    move-result-wide v8

    .line 186
    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/maps/model/LatLngBounds;->d(DD)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    move-wide v10, v6

    .line 193
    :goto_1
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const/4 v8, 0x0

    move-wide v4, v12

    move-wide v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-direct {v0, v1, v3}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :cond_3
    move-wide v10, v4

    move-wide v4, v0

    .line 190
    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-wide v4, v0

    move-wide v10, v6

    goto :goto_1
.end method

.method public final intersects(Lcom/amap/api/maps/model/LatLngBounds;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_3

    .line 135
    :cond_2
    const-string/jumbo v1, "LatLngBounds"

    const-string/jumbo v2, "current LatLngBounds is invalid, please check the structure parameters are legal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/LatLngBounds;->a(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p1, p0}, Lcom/amap/api/maps/model/LatLngBounds;->a(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "southwest"

    iget-object v3, p0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 255
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "northeast"

    iget-object v3, p0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 256
    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 254
    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 266
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps/model/LatLngBoundsCreator;->a(Lcom/amap/api/maps/model/LatLngBounds;Landroid/os/Parcel;I)V

    .line 267
    return-void
.end method
