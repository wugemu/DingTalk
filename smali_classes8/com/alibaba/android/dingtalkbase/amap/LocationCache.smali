.class public Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAP_LATITUDE_KEY:Ljava/lang/String; = "map_latitude_key"

.field private static final MAP_LONGITUDE_KEY:Ljava/lang/String; = "map_longitude_key"

.field private static final MAP_TIMESTAMP_KEY:Ljava/lang/String; = "map_timestamp_key"

.field public static final MAX_CACHE_TIME:J = 0x5265c00L


# instance fields
.field public mLatitude:F

.field public mLongitude:F

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 1
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F
    .param p3, "timestamp"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    .line 29
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    .line 30
    iput-wide p3, p0, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    .line 31
    return-void
.end method

.method public static restoreLocationCache(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationCache;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 45
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v4

    .line 49
    :cond_1
    const-string/jumbo v5, "map_timestamp_key"

    invoke-static {p0, v5, v8, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    .local v2, "timeStamp":J
    const-string/jumbo v5, "map_latitude_key"

    invoke-static {p0, v5, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 53
    .local v0, "latitude":F
    const-string/jumbo v5, "map_longitude_key"

    invoke-static {p0, v5, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v1

    .line 55
    .local v1, "longitude":F
    cmp-long v5, v8, v2

    if-eqz v5, :cond_0

    cmpl-float v5, v6, v0

    if-eqz v5, :cond_0

    cmpl-float v5, v6, v1

    if-eqz v5, :cond_0

    .line 59
    new-instance v4, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;-><init>(FFJ)V

    goto :goto_0
.end method

.method public static saveToPreference(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/amap/LocationCache;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string/jumbo v0, "map_latitude_key"

    iget v1, p1, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 40
    const-string/jumbo v0, "map_longitude_key"

    iget v1, p1, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 41
    const-string/jumbo v0, "map_timestamp_key"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    invoke-static {p0, v0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method
