.class public Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;
.super Ljava/lang/Object;
.source "ReportHelper.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/String;

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "KEY_INFO_FOR_REPORTER"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->n:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "KEY_LAST_REPORT_TIME"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "stopFrontReport"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "stopReport"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "containsTokens"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->d:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "CMStart"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->e:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "secdataOriIF"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->f:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "oldLocSZ"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->g:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "openLogging"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "noUpSceneVID"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->i:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "maxLogNum"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->j:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "synShutPre"

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->k:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 172
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 173
    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 179
    :goto_0
    const-string/jumbo v3, "Y"

    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    const-string/jumbo v3, "ReportHelper"

    const-string/jumbo v4, "\u670d\u52a1\u7aef\u5df2\u4e0b\u53d1[\u9700\u8981]\u4e0a\u62a5Tokens\u7684\u6307\u4ee4"

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 184
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    :goto_2
    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 185
    const/4 v1, 0x3

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 186
    const/4 v1, 0x4

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 187
    const/4 v1, 0x5

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 188
    const/4 v1, 0x6

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 189
    const/4 v1, 0x7

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 190
    const/16 v1, 0x8

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 191
    const/16 v1, 0x9

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 192
    const/16 v1, 0xa

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 193
    const/16 v1, 0xb

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 194
    const/16 v1, 0xc

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 195
    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {v2, v5, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 195
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getUmidToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 334
    if-nez p0, :cond_0

    .line 335
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 336
    if-nez p0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "VI_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    const-string/jumbo v4, "ReportHelper"

    const-string/jumbo v5, "\u66f4\u65b0VI_%s\u4e3a\uff1a%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_1
    if-eqz p2, :cond_2

    .line 359
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 200
    .line 1205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 200
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 201
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v1, "addToJsonarray | index: %s, value: %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 1208
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;)V
    .locals 2

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 241
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v1, "response is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;->config:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V

    .line 254
    return-void
.end method

.method public static a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V
    .locals 2

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v1, "response is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->config:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(ZLjava/lang/String;)V

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1312
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1313
    if-eqz v0, :cond_0

    .line 1317
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VI_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1323
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v1, "\u66f4\u65b0VI_%s\u4e3a\uff1a%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 271
    const-class v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 272
    :cond_0
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v2, "\u8fd4\u56de\u4fe1\u606f\u4e0d\u6ee1\u8db3\u66f4\u65b0\u8981\u6c42\uff0c\u672c\u6b21\u4e0d\u66f4\u65b0"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    monitor-exit v1

    return-void

    .line 275
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 276
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->needCleanTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v4, "ReportHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " \u5728\u6838\u8eab\u8fc7\u7a0b\u4e2d\u4e0d\u7acb\u5373\u66f4\u65b0\uff0c\u5df2\u6682\u5b58\uff0c\u540e\u7eed\u66f4\u65b0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 283
    :cond_2
    :try_start_2
    const-string/jumbo v4, "ReportHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u5f53\u524d\u6ca1\u6709\u6838\u8eab\u4efb\u52a1\u8fdb\u884c\uff0c\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 288
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string/jumbo v1, "reportOccasion"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    :cond_0
    const-string/jumbo v1, "ReportHelper"

    const-string/jumbo v2, "ReportHelper.reportInfo() | isForced: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/utils/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/a;-><init>(ZLjava/util/HashMap;)V

    const-string/jumbo v0, "viReportInfo"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 7

    .prologue
    .line 295
    const-class v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 296
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 297
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v5, "ReportHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\u5df2\u66f4\u65b0\u5230\u672c\u5730"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 303
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/String;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    const-class v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v4

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v2, "Y"

    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v1, "ReportHelper"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u5df2\u4e0b\u53d1\u5173\u95ed\u6307\u4ee4"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit v4

    return v0

    .line 144
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    sget-object v2, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "md5"

    invoke-static {p0, v3}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const-string/jumbo v1, "ReportHelper"

    const-string/jumbo v2, "envData\u6ca1\u6709\u53d8\u5316\uff0c\u4e0d\u4e0a\u62a5"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 151
    :cond_1
    :try_start_2
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v2, "envData\u6709\u53d8\u5316\uff0c\u9700\u8981\u4e0a\u62a5"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 152
    goto :goto_0

    .line 156
    :cond_2
    const-wide/16 v2, 0x0

    .line 157
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 159
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 161
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/32 v6, 0xea60

    cmp-long v2, v2, v6

    if-gez v2, :cond_4

    .line 162
    const-string/jumbo v1, "ReportHelper"

    const-string/jumbo v2, "envData\u4e0a\u62a5\u95f4\u9694\u5c0f\u4e8e1\u5206\u949f\uff0c\u4e0d\u4e0a\u62a5"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 165
    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, ""

    .line 230
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VI_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
