.class public final Lcbt;
.super Ljava/lang/Object;
.source "BombRedPacketUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)Z
    .locals 2
    .param p0, "clusterObject"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->redPacketBomb:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v0, "allHappy"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->redPacketBomb:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketBombExt;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 12

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v5

    .line 68
    .local v5, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v5, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 71
    .local v4, "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_0

    .line 72
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v3

    .line 76
    .local v3, "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v3, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "timestamp":Ljava/lang/String;
    invoke-interface {v3, v6, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "wuaForKey":Ljava/lang/String;
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v8, "wua"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 89
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v4    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v6    # "timestamp":Ljava/lang/String;
    .end local v7    # "wuaForKey":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 85
    .restart local v0    # "appKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "je":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string/jumbo v8, "redpackets"

    const-string/jumbo v9, "wua"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "get wua exception "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "je":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v8, ""

    goto :goto_0
.end method
