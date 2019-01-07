.class public Lcnb;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string/jumbo v1, "0"

    .line 47
    .local v1, "advertisingId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 49
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 61
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    return-object v1

    .line 51
    :catch_0
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    const-class v3, Lcnb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getSyncAdvertisingId IOException"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :catch_1
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    const-class v3, Lcnb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getSyncAdvertisingId IllegalStateException"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :catch_2
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    const-class v3, Lcnb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getSyncAdvertisingId GooglePlayServicesNotAvailableException"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :catch_3
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    const-class v3, Lcnb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getSyncAdvertisingId GooglePlayServicesRepairableException"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :catch_4
    move-exception v2

    const-string/jumbo v2, "dingtalkbase"

    const-class v3, Lcnb;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "getSyncAdvertisingId Exception"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "googleserviceFlag":Z
    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 29
    .local v0, "googleApiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 30
    .local v2, "resultCode":I
    if-nez v2, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 37
    .end local v0    # "googleApiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "resultCode":I
    :cond_0
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v3

    const-string/jumbo v3, "dingtalkbase"

    const-class v4, Lcnb;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Exception isHasGoogleService"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
