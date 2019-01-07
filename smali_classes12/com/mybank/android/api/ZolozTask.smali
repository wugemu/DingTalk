.class public Lcom/mybank/android/api/ZolozTask;
.super Ljava/lang/Object;
.source "ZolozTask.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alipay/mobile/security/zim/api/ZIMFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mybank/android/api/ZolozTask;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "extParams"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string/jumbo v0, "verifyId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "bizName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "verifyType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "logonId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "sceneId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "bizId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "bizRequestData"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "nextStep"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "moduleData"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 147
    return-object p0
.end method

.method private static a(Landroid/os/Bundle;Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 156
    new-instance p0, Landroid/os/Bundle;

    .end local p0    # "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .restart local p0    # "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object p0

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1178
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1179
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1180
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 1181
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1182
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1183
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 1185
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 1186
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_7

    .line 1187
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 1188
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_8

    .line 1189
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1190
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 1192
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 1193
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 1194
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 1
    .param p0, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/mybank/android/api/ZolozTask;->a(Landroid/os/Bundle;Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mybank/android/api/ZolozTask;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/api/ZolozTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mybank/android/api/ZolozTask;->b:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    return-object v0
.end method

.method static synthetic a(Lcom/mybank/android/api/ZolozTask;Lcom/alipay/mobile/security/zim/api/ZIMFacade;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/api/ZolozTask;
    .param p1, "x1"    # Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mybank/android/api/ZolozTask;->b:Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "info"    # Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    .prologue
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "object":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 58
    const-string/jumbo v1, "apdidToken"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string/jumbo v1, "deviceType"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string/jumbo v1, "deviceModel"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string/jumbo v1, "appName"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string/jumbo v1, "appVersion"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v1, "osVersion"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v1, "bioMetaInfo"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string/jumbo v1, "zimVer"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->getZimVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/ZolozTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
