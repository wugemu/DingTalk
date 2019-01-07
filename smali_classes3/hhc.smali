.class public abstract Lhhc;
.super Ljava/lang/Object;
.source "BaseFCPlanExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhhc$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

.field protected b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhhc$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhhc;->b:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhhc;->c:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhhc;->d:Landroid/util/SparseArray;

    .line 212
    return-void
.end method

.method protected static a(Lhjq;)Lhjq;
    .locals 11
    .param p0, "model"    # Lhjq;

    .prologue
    const/4 v10, 0x0

    .line 125
    if-nez p0, :cond_0

    .line 126
    const/4 p0, 0x0

    .line 159
    .local v3, "securityModel":Lhke;
    :goto_0
    return-object p0

    .line 128
    .end local v3    # "securityModel":Lhke;
    :cond_0
    new-instance v3, Lhke;

    invoke-direct {v3}, Lhke;-><init>()V

    .line 130
    .restart local v3    # "securityModel":Lhke;
    :try_start_0
    new-instance v7, Landroid/content/ContextWrapper;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 131
    .local v4, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v1

    .line 132
    .local v1, "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    .line 133
    .local v2, "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    const/4 v0, 0x0

    .line 134
    .local v0, "appKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 135
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 138
    invoke-interface {v1, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "timestamp":Ljava/lang/String;
    new-instance v6, Lhkl;

    invoke-direct {v6}, Lhkl;-><init>()V

    .line 141
    .local v6, "wuaModel":Lhkl;
    iput-object v5, v6, Lhkl;->a:Ljava/lang/String;

    .line 142
    invoke-interface {v1, v5, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lhkl;->b:Ljava/lang/String;

    .line 143
    iput-object v6, v3, Lhke;->e:Lhkl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v2    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v4    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v5    # "timestamp":Ljava/lang/String;
    .end local v6    # "wuaModel":Lhkl;
    :cond_2
    :goto_1
    iput-object v3, p0, Lhjq;->i:Lhke;

    .line 150
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lhjq;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    :goto_2
    :try_start_2
    invoke-static {}, Lhha;->a()Ljava/util/List;

    move-result-object v7

    iput-object v7, v3, Lhke;->b:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    .line 146
    :catch_1
    move-exception v7

    const-string/jumbo v7, "BaseFCPlanExecutor"

    const-string/jumbo v8, "addSecurityInfo error"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method protected final a(JJ)V
    .locals 15
    .param p1, "duration"    # J
    .param p3, "planId"    # J

    .prologue
    .line 165
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 166
    .local v0, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    .line 168
    .local v6, "orgId":J
    :goto_0
    iget-object v1, p0, Lhhc;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const-string/jumbo v1, "103"

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-static/range {v1 .. v13}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;IFJJJDD)V

    .line 177
    :goto_1
    return-void

    .line 166
    .end local v6    # "orgId":J
    :cond_0
    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0

    .line 174
    .restart local v6    # "orgId":J
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

.method protected final a(Ljava/lang/String;JJDDID)V
    .locals 18
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "planId"    # J
    .param p6, "longitude"    # D
    .param p8, "latitude"    # D
    .param p10, "locationType"    # I
    .param p11, "accuracy"    # D

    .prologue
    .line 207
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 208
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v2, :cond_0

    const-wide/16 v6, 0x0

    .line 1120
    .local v6, "orgId":J
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

    .line 209
    invoke-static/range {v3 .. v17}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJJZDDID)V

    .line 210
    return-void

    .line 208
    .end local v6    # "orgId":J
    :cond_0
    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method protected final a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 15
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 74
    const/4 v8, 0x0

    .line 92
    :cond_0
    :goto_0
    return v8

    .line 76
    :cond_1
    const/4 v8, 0x0

    .line 77
    .local v8, "isPositionMatch":Z
    iget-object v0, p0, Lhhc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhhc$a;

    .line 78
    .local v9, "positionModel":Lhhc$a;
    if-eqz v9, :cond_2

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    iget-wide v4, v9, Lhhc$a;->b:D

    iget-wide v6, v9, Lhhc$a;->c:D

    invoke-static/range {v0 .. v7}, Lcis;->a(DDDD)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v7

    iget v11, v9, Lhhc$a;->a:I

    .line 1096
    const-string/jumbo v0, "BaseFCPlanExecutor"

    const-string/jumbo v1, "isCheckInDistanceRange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mAccuracyMap.size"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-wide/16 v2, 0x0

    .line 1099
    iget-object v0, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1100
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1101
    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1102
    iget-object v0, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1103
    int-to-float v3, v0

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1104
    cmpl-float v12, v2, v3

    if-lez v12, :cond_4

    .line 1106
    iget-object v2, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move v2, v3

    .line 1101
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1107
    :cond_4
    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    .line 1108
    iget-object v3, p0, Lhhc;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_2

    :cond_5
    move-wide v4, v2

    .line 1113
    :cond_6
    float-to-double v0, v7

    mul-double/2addr v0, v4

    .line 1114
    iget v2, p0, Lhhc;->e:I

    if-lez v2, :cond_7

    .line 1115
    iget v2, p0, Lhhc;->e:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1118
    :cond_7
    const-string/jumbo v2, "BaseFCPlanExecutor"

    const-string/jumbo v3, "isCheckInDistanceRange"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "accuracy"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v12, v13

    const/4 v7, 0x2

    const-string/jumbo v13, "factor"

    aput-object v13, v12, v7

    const/4 v7, 0x3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v12, v7

    const/4 v4, 0x4

    const-string/jumbo v5, "distance"

    aput-object v5, v12, v4

    const/4 v4, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-static {v2, v3, v12}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    float-to-double v2, v6

    int-to-double v4, v11

    add-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    .line 79
    :goto_3
    if-eqz v0, :cond_2

    .line 80
    const/4 v8, 0x1

    .line 81
    const-string/jumbo v0, "BaseFCPlanExecutor"

    const-string/jumbo v1, "isPositionMatch"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "lat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "lng"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "dest lat"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, v9, Lhhc$a;->b:D

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "dest lng"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-wide v4, v9, Lhhc$a;->c:D

    .line 84
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "offset"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget v4, v9, Lhhc$a;->a:I

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "aMapLocation"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object p1, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "accuracy"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 81
    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1119
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method protected final a(Ljava/util/List;)Z
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
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    iget-object v4, p0, Lhhc;->b:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 53
    const-string/jumbo v4, "BaseFCPlanExecutor"

    const-string/jumbo v5, "isWifiMatch"

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "wifiRule"

    aput-object v7, v6, v3

    iget-object v7, p0, Lhhc;->b:Ljava/util/HashSet;

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhkj;

    .line 56
    .local v1, "wifiInfoModel":Lhkj;
    if-eqz v1, :cond_0

    .line 60
    iget-object v4, v1, Lhkj;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    iget-object v4, p0, Lhhc;->b:Ljava/util/HashSet;

    iget-object v5, v1, Lhkj;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string/jumbo v4, "BaseFCPlanExecutor"

    const-string/jumbo v5, "isWifiMatch"

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "macIp"

    aput-object v7, v6, v3

    iget-object v3, v1, Lhkj;->b:Ljava/lang/String;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .end local v0    # "i":I
    .end local v1    # "wifiInfoModel":Lhkj;
    :goto_1
    return v2

    .line 54
    .restart local v0    # "i":I
    .restart local v1    # "wifiInfoModel":Lhkj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "wifiInfoModel":Lhkj;
    :cond_1
    move v2, v3

    .line 69
    goto :goto_1
.end method

.method protected final b(JJ)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "planId"    # J

    .prologue
    .line 183
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v8

    .line 184
    .local v8, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v8, :cond_0

    const-wide/16 v4, 0x0

    .line 186
    .local v4, "orgId":J
    :goto_0
    const-string/jumbo v0, "104"

    .line 187
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-wide v2, p1

    move-wide v6, p3

    .line 186
    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/Boolean;JJJ)V

    .line 188
    return-void

    .line 184
    .end local v4    # "orgId":J
    :cond_0
    iget-wide v4, v8, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method protected final c(JJ)V
    .locals 13
    .param p1, "duration"    # J
    .param p3, "planId"    # J

    .prologue
    .line 195
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 196
    .local v0, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    .line 197
    .local v4, "orgId":J
    :goto_0
    const-string/jumbo v1, "102"

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v6, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v7, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v8, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget-object v2, p0, Lhhc;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget v9, v2, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    move-wide v2, p1

    move-wide/from16 v10, p3

    invoke-static/range {v1 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJIFIIJ)V

    .line 200
    return-void

    .line 196
    .end local v4    # "orgId":J
    :cond_0
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method
