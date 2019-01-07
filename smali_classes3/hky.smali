.class public Lhky;
.super Ljava/lang/Object;
.source "AutoAttendanceModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhky$a;,
        Lhky$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhky$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private volatile i:J

.field private volatile j:I

.field private volatile k:Z

.field private l:Lcom/amap/api/location/AMapLocationClient;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Lcit$a;

.field private o:Lhky$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-class v0, Lhky;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhky;->b:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhky;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V
    .locals 14
    .param p1, "object"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lhky;->d:Ljava/util/HashSet;

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lhky;->e:Ljava/util/List;

    .line 112
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lhky;->f:Ljava/util/Map;

    .line 115
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lhky;->i:J

    .line 116
    const/4 v8, 0x0

    iput v8, p0, Lhky;->j:I

    .line 118
    const/4 v8, 0x0

    iput-boolean v8, p0, Lhky;->k:Z

    .line 121
    new-instance v8, Lhky$1;

    invoke-direct {v8, p0}, Lhky$1;-><init>(Lhky;)V

    iput-object v8, p0, Lhky;->m:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v8, Lhky$2;

    invoke-direct {v8, p0}, Lhky$2;-><init>(Lhky;)V

    iput-object v8, p0, Lhky;->n:Lcit$a;

    .line 151
    new-instance v8, Lhky$3;

    invoke-direct {v8, p0}, Lhky$3;-><init>(Lhky;)V

    iput-object v8, p0, Lhky;->o:Lhky$a;

    .line 272
    iput-object p1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 274
    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 276
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPositionList:Ljava/lang/String;

    invoke-direct {v3, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "positionArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 279
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 280
    .local v4, "positionJSONObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 281
    new-instance v5, Lhky$b;

    invoke-direct {v5, p0}, Lhky$b;-><init>(Lhky;)V

    .line 282
    .local v5, "positionModel":Lhky$b;
    const-string/jumbo v8, "latitude"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v5, Lhky$b;->b:D

    .line 283
    const-string/jumbo v8, "longitude"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v5, Lhky$b;->c:D

    .line 284
    const-string/jumbo v8, "offset"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lhky$b;->a:I

    .line 285
    iget-object v8, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v5    # "positionModel":Lhky$b;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    .end local v3    # "positionArray":Lorg/json/JSONArray;
    .end local v4    # "positionJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "attendance"

    sget-object v9, Lhky;->b:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "AutoAttendanceModule init err "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 291
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " planId: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-wide v12, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 290
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 297
    :try_start_1
    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mWifiList:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 298
    .local v7, "wifiArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 299
    .local v2, "len":I
    if-lez v2, :cond_3

    .line 300
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 301
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "wifi":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 304
    iget-object v8, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v6    # "wifi":Ljava/lang/String;
    .end local v7    # "wifiArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 309
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v8, "attendance"

    sget-object v9, Lhky;->b:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "AutoAttendanceModule init err "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 310
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " planId: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-wide v12, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 309
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    if-eqz v8, :cond_4

    .line 315
    iget-object v8, p0, Lhky;->f:Ljava/util/Map;

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mAccuracyMap:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 317
    iget v8, p1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMaxOffset:I

    iput v8, p0, Lhky;->g:I

    .line 320
    :cond_4
    return-void
.end method

.method static synthetic a(Lhky;F)F
    .locals 7
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # F

    .prologue
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 98
    .line 10669
    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, p1, v5

    .line 10670
    cmpl-float v6, v5, v0

    if-ltz v6, :cond_0

    .line 98
    :goto_0
    return v0

    .line 10672
    :cond_0
    cmpl-float v0, v5, v1

    if-ltz v0, :cond_1

    move v0, v1

    .line 10673
    goto :goto_0

    .line 10674
    :cond_1
    cmpl-float v0, v5, v2

    if-ltz v0, :cond_2

    move v0, v2

    .line 10675
    goto :goto_0

    .line 10676
    :cond_2
    cmpl-float v0, v5, v3

    if-ltz v0, :cond_3

    move v0, v3

    .line 10677
    goto :goto_0

    .line 10678
    :cond_3
    cmpl-float v0, v5, v4

    if-ltz v0, :cond_4

    move v0, v4

    .line 10679
    goto :goto_0

    .line 10680
    :cond_4
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    .line 10681
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 10683
    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method static synthetic a(Lhky;I)I
    .locals 1
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # I

    .prologue
    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lhky;->h:I

    return v0
.end method

.method static synthetic a(Lhky;J)J
    .locals 1
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lhky;->i:J

    return-wide p1
.end method

.method static synthetic a(Lhky;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .locals 1
    .param p0, "x0"    # Lhky;

    .prologue
    .line 98
    iget-object v0, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    return-object v0
.end method

.method private static a(Lhjq;)Lhjq;
    .locals 14
    .param p0, "model"    # Lhjq;

    .prologue
    .line 1094
    if-nez p0, :cond_1

    .line 1095
    const/4 p0, 0x0

    .line 1135
    .local v7, "securityModel":Lhke;
    :cond_0
    :goto_0
    return-object p0

    .line 1097
    .end local v7    # "securityModel":Lhke;
    :cond_1
    new-instance v7, Lhke;

    invoke-direct {v7}, Lhke;-><init>()V

    .line 1099
    .restart local v7    # "securityModel":Lhke;
    :try_start_0
    new-instance v11, Landroid/content/ContextWrapper;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v8

    .line 1100
    .local v8, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v5

    .line 1101
    .local v5, "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    invoke-virtual {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v6

    .line 1102
    .local v6, "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    const/4 v0, 0x0

    .line 1103
    .local v0, "appKey":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1104
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1107
    invoke-interface {v5, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 1108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 1109
    .local v9, "timestamp":Ljava/lang/String;
    new-instance v10, Lhkl;

    invoke-direct {v10}, Lhkl;-><init>()V

    .line 1110
    .local v10, "wuaModel":Lhkl;
    iput-object v9, v10, Lhkl;->a:Ljava/lang/String;

    .line 1111
    invoke-interface {v5, v9, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhkl;->b:Ljava/lang/String;

    .line 1112
    iput-object v10, v7, Lhke;->e:Lhkl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1117
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v5    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v6    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v8    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v9    # "timestamp":Ljava/lang/String;
    .end local v10    # "wuaModel":Lhkl;
    :cond_3
    :goto_1
    iput-object v7, p0, Lhjq;->i:Lhke;

    .line 1119
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lhjq;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1122
    :goto_2
    :try_start_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    const-string/jumbo v12, "sw_attendance_apps_config"

    invoke-static {v11, v12}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Lhkv;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1124
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1126
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1128
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11, v4}, Lhkv;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1129
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 1115
    :catch_1
    move-exception v11

    const-string/jumbo v11, "attendance"

    sget-object v12, Lhky;->b:Ljava/lang/String;

    const-string/jumbo v13, "addSecurityInfo err"

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1132
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :try_start_3
    iput-object v1, v7, Lhke;->b:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    goto :goto_2
.end method

.method static synthetic a(Lhky;Lhjq;)Lhjq;
    .locals 1
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Lhjq;

    .prologue
    .line 98
    invoke-static {p1}, Lhky;->a(Lhjq;)Lhjq;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)Lhky;
    .locals 1
    .param p0, "oaCheckInPushObject"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .prologue
    .line 425
    new-instance v0, Lhky;

    invoke-direct {v0, p0}, Lhky;-><init>(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V

    return-object v0
.end method

.method private static a(IFLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "distance"    # F
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "planId"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 899
    new-instance v0, Lhkz;

    invoke-direct {v0}, Lhkz;-><init>()V

    .line 900
    .local v0, "action":Lhkz;
    iput p0, v0, Lhkz;->b:I

    .line 901
    const/4 v1, 0x0

    iput v1, v0, Lhkz;->c:F

    .line 902
    iput-object p2, v0, Lhkz;->d:Ljava/lang/String;

    .line 903
    iput-wide p3, v0, Lhkz;->e:J

    .line 904
    iput-object v2, v0, Lhkz;->f:Ljava/lang/String;

    .line 905
    iput-object v2, v0, Lhkz;->g:Ljava/lang/String;

    .line 906
    invoke-static {v0}, Lhky;->a(Lhkz;)V

    .line 907
    return-void
.end method

.method public static a(ILjava/lang/String;J)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "planId"    # J

    .prologue
    const/4 v6, 0x0

    .line 894
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lhky;->a(IFLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method private a(JJ)V
    .locals 13
    .param p1, "duration"    # J
    .param p3, "planId"    # J

    .prologue
    .line 870
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 871
    .local v0, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    .line 872
    .local v4, "orgId":J
    :goto_0
    const-string/jumbo v1, "102"

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v6, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v7, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v9, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    move-wide v2, p1

    move-wide/from16 v10, p3

    invoke-static/range {v1 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJIFIIJ)V

    .line 875
    return-void

    .line 871
    .end local v4    # "orgId":J
    :cond_0
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method private a(Lhjq;JI)V
    .locals 8
    .param p1, "model"    # Lhjq;
    .param p2, "startTime"    # J
    .param p4, "locationType"    # I

    .prologue
    .line 729
    const-string/jumbo v0, "AutoAttend"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhky$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lhky$4;-><init>(Lhky;Lhjq;JI)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method static synthetic a(Lhky;JJ)V
    .locals 15
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 98
    .line 10840
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 10841
    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    .line 10843
    :goto_0
    iget-object v0, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10845
    const-string/jumbo v1, "103"

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-static/range {v1 .. v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V

    :goto_1
    return-void

    .line 10841
    :cond_0
    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0

    .line 10849
    :cond_1
    const-string/jumbo v1, "106"

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-static/range {v1 .. v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V

    goto :goto_1
.end method

.method static synthetic a(Lhky;Lhjq;JI)V
    .locals 0
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Lhjq;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lhky;->a(Lhjq;JI)V

    return-void
.end method

.method static synthetic a(Lhky;Ljava/lang/String;JJDDID)V
    .locals 18
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # D
    .param p8, "x5"    # D
    .param p10, "x6"    # I
    .param p11, "x7"    # D

    .prologue
    .line 98
    .line 10882
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 10883
    if-nez v2, :cond_0

    const-wide/16 v6, 0x0

    .line 10884
    :goto_0
    invoke-static {}, Lhkv;->a()Z

    move-result v10

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v8, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move/from16 v15, p10

    move-wide/from16 v16, p11

    invoke-static/range {v3 .. v17}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJJZDDID)V

    .line 98
    return-void

    .line 10883
    :cond_0
    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method static synthetic a(Lhky;ZFJJDD)V
    .locals 15
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # D
    .param p9, "x6"    # D

    .prologue
    .line 98
    .line 10826
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 10827
    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    .line 10828
    :goto_0
    iget-object v0, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 10830
    const-string/jumbo v1, "103"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v1 .. v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V

    :goto_2
    return-void

    .line 10827
    :cond_0
    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0

    .line 10830
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 10834
    :cond_2
    const-string/jumbo v1, "106"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_3
    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v1 .. v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static a(Lhkz;)V
    .locals 12
    .param p0, "action"    # Lhkz;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 910
    if-nez p0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget v3, p0, Lhkz;->b:I

    if-eq v11, v3, :cond_3

    const/4 v3, 0x7

    iget v6, p0, Lhkz;->b:I

    if-eq v3, v6, :cond_3

    const/16 v3, 0x8

    iget v6, p0, Lhkz;->b:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lhkz;->b:I

    if-ne v10, v3, :cond_2

    .line 915
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v6, "f_auto_attendance_dispatch_msg_server"

    .line 6083
    invoke-virtual {v3, v6, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 915
    if-nez v3, :cond_3

    .line 7055
    :cond_2
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v3

    const-string/jumbo v6, "sw_checkin_pop_window_close_date"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lcnh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7057
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 7058
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Lhrm;->a()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 7059
    sget-object v7, Lhky;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 7061
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v4

    .line 7070
    .local v0, "isNoRemindToday":Z
    :goto_1
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v6, "dt_function"

    const-string/jumbo v7, "oa_checkin_tips_disabled_android"

    invoke-interface {v3, v6, v7}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v3

    .line 7071
    if-eqz v3, :cond_6

    .line 7072
    invoke-interface {v3}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7073
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 7075
    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    move v2, v4

    .line 918
    .local v2, "tipsIsDisable":Z
    :goto_2
    const-string/jumbo v3, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "dispatchMsgAsync isNoRemindToday:"

    aput-object v8, v7, v5

    .line 919
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const-string/jumbo v5, " tipsIsDisable"

    aput-object v5, v7, v10

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x4

    const-string/jumbo v8, " type="

    aput-object v8, v7, v5

    const/4 v5, 0x5

    iget v8, p0, Lhkz;->b:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 918
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 8046
    .end local v0    # "isNoRemindToday":Z
    .end local v2    # "tipsIsDisable":Z
    :cond_3
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 8047
    sget-object v3, Lhky;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 8048
    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 8049
    sget-object v3, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 927
    .local v1, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v3, Lhky$5;

    invoke-direct {v3, p0}, Lhky$5;-><init>(Lhkz;)V

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v1    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_4
    move v0, v5

    .line 7066
    goto :goto_1

    .restart local v0    # "isNoRemindToday":Z
    :cond_5
    move v2, v5

    .line 7075
    goto :goto_2

    :cond_6
    move v2, v5

    .line 7080
    goto :goto_2
.end method

.method private a(J)Z
    .locals 13
    .param p1, "startTime"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v12, 0x0

    .line 533
    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    if-ne v6, v1, :cond_0

    .line 534
    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iput v0, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    .line 539
    :goto_0
    iget-object v1, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    const-string/jumbo v3, "mWifiSet and mPositionModelList all is null !"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_1
    return v0

    .line 536
    :cond_0
    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v2, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    goto :goto_0

    .line 545
    :cond_1
    iget-object v1, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 546
    invoke-direct {p0}, Lhky;->e()Ljava/util/List;

    move-result-object v11

    .line 548
    .local v11, "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    invoke-static {}, Lhky;->f()Lhkj;

    move-result-object v8

    .line 549
    .local v8, "connectWifi":Lhkj;
    if-eqz v8, :cond_2

    .line 553
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_2
    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 557
    const/4 v9, 0x0

    .line 558
    .local v9, "isMatched":Z
    invoke-direct {p0, v11}, Lhky;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 559
    if-eqz v8, :cond_4

    iget-object v1, v8, Lhkj;->b:Ljava/lang/String;

    invoke-static {v1}, Lhha;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 560
    invoke-direct {p0}, Lhky;->d()Ljava/util/List;

    move-result-object v11

    .line 561
    invoke-direct {p0, v11}, Lhky;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    :cond_3
    const/4 v9, 0x1

    .line 568
    :cond_4
    if-eqz v9, :cond_5

    .line 569
    new-instance v10, Lhjq;

    invoke-direct {v10}, Lhjq;-><init>()V

    .line 570
    .local v10, "model":Lhjq;
    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lhjq;->e:Ljava/lang/Long;

    .line 571
    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iput-object v1, v10, Lhjq;->f:Ljava/lang/String;

    .line 573
    iput-object v11, v10, Lhjq;->d:Ljava/util/List;

    .line 574
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v1

    invoke-virtual {v1}, Lhkx;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lhjq;->g:Ljava/lang/String;

    .line 575
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "wifi match:"

    aput-object v4, v3, v12

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v10, p1, p2, v6}, Lhky;->a(Lhjq;JI)V

    goto/16 :goto_1

    .line 584
    .end local v8    # "connectWifi":Lhkj;
    .end local v9    # "isMatched":Z
    .end local v10    # "model":Lhjq;
    .end local v11    # "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :cond_5
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "wifi not match:"

    aput-object v4, v3, v12

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 587
    iget-object v1, p0, Lhky;->o:Lhky$a;

    .line 4089
    iput-wide p1, v1, Lhky$a;->b:J

    .line 588
    invoke-direct {p0}, Lhky;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 589
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "swork_fs_checkin_location_cache_enabled"

    invoke-virtual {v1, v2, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 590
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lhky;->o:Lhky$a;

    invoke-virtual {v0, v1, v12}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lciq;Z)Lcom/amap/api/location/AMapLocationClient;

    :cond_6
    :goto_2
    move v0, v12

    .line 603
    goto/16 :goto_1

    .line 592
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v1

    iget-object v2, p0, Lhky;->o:Lhky$a;

    invoke-virtual {v1, v2, v12, v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;ZZ)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    iput-object v0, p0, Lhky;->l:Lcom/amap/api/location/AMapLocationClient;

    goto :goto_2

    .line 596
    :cond_8
    invoke-static {}, Lhky;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 597
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lhky;->b(I)V

    .line 600
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    iget-object v0, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    .line 4858
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 4859
    if-nez v0, :cond_a

    const-wide/16 v4, 0x0

    .line 4861
    :goto_3
    const-string/jumbo v0, "104"

    .line 4862
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4861
    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/Boolean;JJJ)V

    goto :goto_2

    .line 4859
    :cond_a
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_3
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 15
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 607
    if-nez p1, :cond_1

    .line 608
    const/4 v8, 0x0

    .line 626
    :cond_0
    :goto_0
    return v8

    .line 610
    :cond_1
    const/4 v8, 0x0

    .line 611
    .local v8, "isPositionMatch":Z
    iget-object v0, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhky$b;

    .line 612
    .local v9, "positionModel":Lhky$b;
    if-eqz v9, :cond_2

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-wide v4, v9, Lhky$b;->b:D

    iget-wide v6, v9, Lhky$b;->c:D

    invoke-static/range {v0 .. v7}, Lcis;->a(DDDD)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v7

    iget v11, v9, Lhky$b;->a:I

    .line 5631
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhky;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "isCheckInDistanceRange mAccuracyMap.size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhky;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5633
    const-wide/16 v2, 0x0

    .line 5634
    iget-object v0, p0, Lhky;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5635
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5636
    iget-object v1, p0, Lhky;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v4, v2

    move v2, v0

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 5638
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    .line 5640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v4, v2

    move v2, v1

    goto :goto_1

    .line 5641
    :cond_3
    cmpl-float v1, v2, v1

    if-nez v1, :cond_8

    .line 5642
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    .line 5644
    goto :goto_1

    :cond_4
    move-wide v4, v2

    .line 5647
    :cond_5
    float-to-double v0, v7

    mul-double/2addr v0, v4

    .line 5648
    iget v2, p0, Lhky;->g:I

    if-lez v2, :cond_6

    .line 5649
    iget v2, p0, Lhky;->g:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 5652
    :cond_6
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhky;->b:Ljava/lang/String;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "isCheckInDistanceRange accuracy:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v13

    const/4 v7, 0x2

    const-string/jumbo v13, ":factor:"

    aput-object v13, v12, v7

    const/4 v7, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v7

    const/4 v4, 0x4

    const-string/jumbo v5, ":distance:"

    aput-object v5, v12, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    float-to-double v2, v6

    int-to-double v4, v11

    add-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    .line 613
    :goto_3
    if-eqz v0, :cond_2

    .line 615
    const/4 v8, 0x1

    .line 617
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhky;->b:Ljava/lang/String;

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "current position: lat:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", lng:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "; dest position: lat:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, v9, Lhky$b;->b:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", lng:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-wide v4, v9, Lhky$b;->c:D

    .line 619
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "; offset:"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget v4, v9, Lhky$b;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "; aMapLocation info:"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ", accuracy"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 617
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5654
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    move-wide v0, v4

    goto/16 :goto_2
.end method

.method static synthetic a(Lhky;Lcom/amap/api/location/AMapLocation;)Z
    .locals 1
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lhky;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhkj;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "wifiInfoModelList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    iget-object v4, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 509
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhkj;

    .line 510
    .local v1, "wifiInfoModel":Lhkj;
    const-string/jumbo v4, "attendance"

    sget-object v5, Lhky;->b:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "wifiInfoModel.macIp=>:"

    aput-object v7, v6, v3

    iget-object v7, v1, Lhkj;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-string/jumbo v8, " wifiInfoModel.ssid="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v1, Lhkj;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v4, v1, Lhkj;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    iget-object v4, p0, Lhky;->d:Ljava/util/HashSet;

    iget-object v5, v1, Lhkj;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    .end local v0    # "i":I
    .end local v1    # "wifiInfoModel":Lhkj;
    :goto_1
    return v2

    .line 508
    .restart local v0    # "i":I
    .restart local v1    # "wifiInfoModel":Lhkj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "wifiInfoModel":Lhkj;
    :cond_1
    move v2, v3

    .line 521
    goto :goto_1
.end method

.method static synthetic b(Lhky;Lcom/amap/api/location/AMapLocation;)F
    .locals 11
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 98
    .line 9691
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 9692
    iget-object v1, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lhky$b;

    .line 9693
    if-eqz v8, :cond_1

    .line 9694
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    .line 9695
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-wide v4, v8, Lhky$b;->b:D

    iget-wide v6, v8, Lhky$b;->c:D

    .line 9694
    invoke-static/range {v0 .. v7}, Lcis;->a(DDDD)F

    move-result v0

    iget v1, v8, Lhky$b;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 9696
    cmpl-float v1, v9, v0

    if-lez v1, :cond_1

    :goto_1
    move v9, v0

    .line 9700
    goto :goto_0

    .line 98
    :cond_0
    return v9

    :cond_1
    move v0, v9

    goto :goto_1
.end method

.method static synthetic b(Lhky;I)I
    .locals 0
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lhky;->j:I

    return p1
.end method

.method static synthetic b(Lhky;)Lcit$a;
    .locals 1
    .param p0, "x0"    # Lhky;

    .prologue
    .line 98
    iget-object v0, p0, Lhky;->n:Lcit$a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lhky;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 8
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1042
    const/4 v2, 0x0

    iget-object v0, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    iget-object v0, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move v1, p1

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lhky;->a(IFLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method static synthetic c(Lhky;)V
    .locals 12
    .param p0, "x0"    # Lhky;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 98
    .line 8706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8707
    invoke-static {}, Lhrm;->a()J

    move-result-wide v2

    .line 8708
    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 8709
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhky;->b:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "module start but expired:"

    aput-object v5, v4, v6

    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8712
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lhky;->b(I)V

    .line 8714
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    iget-object v3, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v2, v4, v5}, Lhkw;->a(J)V

    .line 8717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lhky;->a(JJ)V

    .line 8722
    :goto_0
    return-void

    .line 8719
    :cond_0
    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    cmp-long v4, v2, v10

    if-eqz v4, :cond_1

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 8720
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhky;->b:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "module start but not time:"

    aput-object v3, v2, v6

    iget-object v3, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    .line 8721
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, " "

    aput-object v3, v2, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 8720
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8725
    :cond_1
    invoke-direct {p0, v0, v1}, Lhky;->a(J)Z

    goto :goto_0
.end method

.method static synthetic c(Lhky;I)V
    .locals 0
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lhky;->b(I)V

    return-void
.end method

.method private c()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v7

    const-string/jumbo v4, "sw_attendance_loc_config"

    .line 1489
    iget-object v8, v7, Lhkx;->c:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 1490
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1491
    invoke-static {v4}, Lhkv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1492
    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    iput-object v4, v7, Lhkx;->c:Ljava/util/Map;

    .line 1494
    :cond_1
    iget-object v4, v7, Lhkx;->c:Ljava/util/Map;

    .line 257
    iget v7, p0, Lhky;->j:I

    invoke-static {v4, v7}, Lhkv;->a(Ljava/util/Map;I)J

    move-result-wide v2

    .line 258
    .local v2, "interval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lhky;->i:J

    sub-long v0, v8, v10

    .line 259
    .local v0, "current":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move v4, v5

    .line 268
    :goto_0
    return v4

    .line 262
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v7, "work_fs_checkin_locate_428"

    invoke-virtual {v4, v7, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 263
    goto :goto_0

    .line 265
    :cond_3
    const-string/jumbo v4, "attendance"

    sget-object v7, Lhky;->b:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "needStartLocation false, "

    aput-object v9, v8, v6

    iget-object v9, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    .line 266
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x2

    const-string/jumbo v9, ", need interval: "

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x4

    const-string/jumbo v9, " but "

    aput-object v9, v8, v5

    const/4 v5, 0x5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x6

    const-string/jumbo v9, ", distance "

    aput-object v9, v8, v5

    const/4 v5, 0x7

    iget v9, p0, Lhky;->j:I

    .line 267
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 265
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 268
    goto :goto_0
.end method

.method static synthetic c(Lhky;Lcom/amap/api/location/AMapLocation;)Z
    .locals 10
    .param p0, "x0"    # Lhky;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 98
    .line 10658
    iget-object v0, p0, Lhky;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lhky$b;

    .line 10659
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-wide v4, v8, Lhky$b;->b:D

    iget-wide v6, v8, Lhky$b;->c:D

    invoke-static/range {v0 .. v7}, Lcis;->a(DDDD)F

    move-result v0

    .line 10660
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    iget v2, v8, Lhky$b;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 10661
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 10664
    :cond_1
    const/4 v0, 0x0

    .line 98
    goto :goto_0
.end method

.method private d()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhkj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 429
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v4, "wifiList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    invoke-static {}, Lhkv;->a()Z

    move-result v6

    if-nez v6, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-object v4

    .line 433
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "swork_fs_checkin_wifi_cache_enabled"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 437
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 438
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_3

    .line 439
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 440
    .local v2, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 443
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v7}, Lhha;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 444
    new-instance v3, Lhkj;

    invoke-direct {v3}, Lhkj;-><init>()V

    .line 445
    .local v3, "wifiInfoModel":Lhkj;
    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v7, v3, Lhkj;->a:Ljava/lang/String;

    .line 446
    iget-object v7, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v7, v3, Lhkj;->b:Ljava/lang/String;

    .line 447
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 453
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiInfoModel":Lhkj;
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "attendance"

    sget-object v7, Lhky;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "scan wifi err "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    :try_start_1
    const-string/jumbo v6, "attendance"

    sget-object v7, Lhky;->b:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "scan wifiSetV1:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic d(Lhky;)Z
    .locals 1
    .param p0, "x0"    # Lhky;

    .prologue
    .line 98
    invoke-static {}, Lhky;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lhky;)I
    .locals 1
    .param p0, "x0"    # Lhky;

    .prologue
    .line 98
    iget v0, p0, Lhky;->h:I

    return v0
.end method

.method private e()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhkj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v3, "wifiList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    invoke-static {}, Lhkv;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    :goto_0
    return-object v3

    .line 464
    :cond_0
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v4

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v6, v7}, Lcit;->a(J)Ljava/util/List;

    move-result-object v1

    .line 465
    .local v1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 468
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_1

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lhha;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    new-instance v2, Lhkj;

    invoke-direct {v2}, Lhkj;-><init>()V

    .line 470
    .local v2, "wifiInfoModel":Lhkj;
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v5, v2, Lhkj;->a:Ljava/lang/String;

    .line 471
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v5, v2, Lhkj;->b:Ljava/lang/String;

    .line 472
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "wifiInfoModel":Lhkj;
    :cond_2
    const-string/jumbo v4, "attendance"

    sget-object v5, Lhky;->b:Ljava/lang/String;

    const-string/jumbo v6, "cached scanResultList is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_3
    const-string/jumbo v4, "attendance"

    sget-object v5, Lhky;->b:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "scan wifiSet:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f()Lhkj;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 484
    invoke-static {}, Lhkv;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v2

    .line 487
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 488
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 490
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "macIp":Ljava/lang/String;
    invoke-static {v0}, Lhha;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    new-instance v2, Lhkj;

    invoke-direct {v2}, Lhkj;-><init>()V

    .line 495
    .local v2, "wifiInfoModel":Lhkj;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lhkj;->a:Ljava/lang/String;

    .line 496
    iput-object v0, v2, Lhkj;->b:Ljava/lang/String;

    .line 497
    const-string/jumbo v4, "attendance"

    sget-object v5, Lhky;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "connected wifi "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static g()Z
    .locals 3

    .prologue
    .line 1139
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "work_fs_checkin_range_tips_enable_428"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "module stop:"

    aput-object v4, v3, v6

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v1, p0, Lhky;->k:Z

    if-eqz v1, :cond_3

    .line 385
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lhky;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v1

    iget-object v2, p0, Lhky;->n:Lcit$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3140
    if-nez v2, :cond_1

    .line 3399
    :goto_0
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "module stop location:"

    aput-object v4, v3, v6

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v1

    iget-object v2, p0, Lhky;->o:Lhky$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;)V

    .line 3402
    iget-object v1, p0, Lhky;->l:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    .line 3403
    iget-object v1, p0, Lhky;->l:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 3404
    iget-object v1, p0, Lhky;->l:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 3405
    const/4 v1, 0x0

    iput-object v1, p0, Lhky;->l:Lcom/amap/api/location/AMapLocationClient;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    :cond_0
    :goto_1
    iput-boolean v6, p0, Lhky;->k:Z

    .line 396
    return-void

    .line 3144
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcit;->a:Ljava/util/Set;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3145
    :try_start_3
    iget-object v4, v1, Lcit;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 3146
    iget-object v1, v1, Lcit;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3148
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lhky;->b:Ljava/lang/String;

    const-string/jumbo v2, "removeWifiScanListener err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3407
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3408
    sget-object v2, Lhky;->b:Ljava/lang/String;

    const-string/jumbo v3, "stopLocation err"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 393
    :cond_3
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhky;->b:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "stop is invalid, not start."

    aput-object v4, v3, v6

    iget-object v4, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 13
    .param p1, "source"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 328
    .local v2, "startTime":J
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v5

    iget-object v6, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    .line 2233
    iget-object v5, v5, Lhkx;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {}, Lhrm;->a()J

    move-result-wide v0

    .line 331
    .local v0, "currentTime":J
    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mEndDate:J

    cmp-long v5, v6, v0

    if-gez v5, :cond_1

    .line 332
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "module start but expired:"

    aput-object v8, v7, v11

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v5

    iget-object v6, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v5, v6, v7}, Lhkw;->a(J)V

    .line 336
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lhky;->b(I)V

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-direct {p0, v6, v7, v8, v9}, Lhky;->a(JJ)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    cmp-long v5, v6, v0

    if-lez v5, :cond_2

    .line 345
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "module start but not time:"

    aput-object v8, v7, v11

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mStartDate:J

    .line 346
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string/jumbo v8, " "

    aput-object v8, v7, v12

    const/4 v8, 0x3

    iget-object v9, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v10, v9, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 345
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v5, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "module start but is finished:"

    aput-object v8, v7, v11

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-boolean v5, p0, Lhky;->k:Z

    if-eqz v5, :cond_4

    .line 356
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "module is running "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_4
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "module start:"

    aput-object v8, v7, v11

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iput-boolean v10, p0, Lhky;->k:Z

    .line 362
    iput p1, p0, Lhky;->h:I

    .line 363
    invoke-direct {p0, v2, v3}, Lhky;->a(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 365
    iget-object v5, p0, Lhky;->d:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 366
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v4, "wifiFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    iget-object v6, p0, Lhky;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v5, "attendance"

    sget-object v6, Lhky;->b:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "start wifi listen:"

    aput-object v8, v7, v11

    iget-object v8, p0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v8, v8, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lhkv;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    invoke-static {}, Lcit;->a()Lcit;

    move-result-object v5

    iget-object v6, p0, Lhky;->n:Lcit$a;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v5, v6, v8, v9}, Lcit;->a(Lcit$a;J)V

    goto/16 :goto_0
.end method
