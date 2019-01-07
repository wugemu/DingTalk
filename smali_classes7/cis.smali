.class public final Lcis;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDDD)F
    .locals 4
    .param p0, "startLat"    # D
    .param p2, "startLng"    # D
    .param p4, "endLat"    # D
    .param p6, "endLng"    # D

    .prologue
    .line 250
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 251
    .local v1, "startLatLng":Lcom/amap/api/maps/model/LatLng;
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 253
    .local v0, "endLatLng":Lcom/amap/api/maps/model/LatLng;
    invoke-static {v1, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    return v2
.end method

.method public static a(I)I
    .locals 0
    .param p0, "errorCode"    # I

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 161
    :goto_0
    return p0

    .line 150
    :pswitch_0
    const/4 p0, 0x3

    .line 151
    goto :goto_0

    .line 153
    :pswitch_1
    const/4 p0, 0x5

    .line 154
    goto :goto_0

    .line 157
    :pswitch_2
    const/4 p0, 0x4

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 123
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0}, Lcms;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getProvidersName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "netProvidersName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 126
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/NetworkUtils;->getNetInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 129
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 130
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;
    .locals 3
    .param p0, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    const-string/jumbo v2, "unknown"

    .line 236
    :goto_0
    return-object v2

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    .line 222
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    const-string/jumbo v2, "gps"

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "locationDetail":Ljava/lang/String;
    const-string/jumbo v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "-5"

    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "14"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    :cond_2
    const-string/jumbo v2, "wifi"

    goto :goto_0

    .line 232
    :cond_3
    const-string/jumbo v2, "lbs"

    goto :goto_0

    .line 236
    .end local v0    # "locationDetail":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 171
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 172
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 179
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    .line 175
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "gps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "provider":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 346
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "operator":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 348
    .local v0, "mnc":I
    packed-switch v0, :pswitch_data_0

    .line 360
    :pswitch_0
    const-string/jumbo v3, "unknown"

    .line 363
    .end local v0    # "mnc":I
    .end local v1    # "operator":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 352
    .restart local v0    # "mnc":I
    .restart local v1    # "operator":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    const-string/jumbo v3, "CMCC"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    :pswitch_2
    const-string/jumbo v3, "CUCC"

    goto :goto_0

    .line 358
    :pswitch_3
    const-string/jumbo v3, "CTCC"

    goto :goto_0

    .line 363
    .end local v0    # "mnc":I
    .end local v1    # "operator":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    if-nez p0, :cond_0

    .line 205
    :goto_0
    return v3

    .line 193
    :cond_0
    const/4 v1, 0x1

    .line 195
    .local v1, "isEnabled":Z
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 196
    const/4 v5, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "location_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    move v1, v3

    :goto_1
    move v3, v1

    .line 205
    goto :goto_0

    :cond_1
    move v1, v4

    .line 196
    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "locationProviders":Ljava/lang/String;
    const-string/jumbo v5, "gps"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "network"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    .line 201
    .end local v2    # "locationProviders":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
