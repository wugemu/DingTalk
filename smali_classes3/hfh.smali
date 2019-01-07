.class public final Lhfh;
.super Ljava/lang/Object;
.source "AppInfoUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "AppInfoUtil"

    sput-object v0, Lhfh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "*"

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 201
    :cond_0
    const/4 v9, 0x0

    .line 241
    :goto_0
    return v9

    .line 204
    :cond_1
    const-string/jumbo v9, "\\."

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "versionArray1":[Ljava/lang/String;
    const-string/jumbo v9, "\\."

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "versionArray2":[Ljava/lang/String;
    array-length v5, v7

    .line 208
    .local v5, "len1":I
    array-length v6, v8

    .line 209
    .local v6, "len2":I
    if-gt v5, v6, :cond_2

    move v4, v5

    .line 213
    .local v4, "len":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 214
    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 215
    .local v10, "x1":J
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 216
    .local v12, "x2":J
    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 217
    const/4 v9, 0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    :cond_2
    move v4, v6

    .line 209
    goto :goto_1

    .line 218
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v10    # "x1":J
    .restart local v12    # "x2":J
    :cond_3
    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 219
    const/4 v9, -0x1

    goto :goto_0

    .line 213
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    .end local v10    # "x1":J
    .end local v12    # "x2":J
    :cond_5
    if-le v5, v6, :cond_7

    .line 225
    move v3, v4

    :goto_3
    if-ge v3, v5, :cond_9

    .line 226
    aget-object v9, v7, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_6

    .line 227
    const/4 v9, 0x1

    goto :goto_0

    .line 225
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 230
    :cond_7
    if-ge v5, v6, :cond_9

    .line 231
    move v3, v4

    :goto_4
    if-ge v3, v6, :cond_9

    .line 232
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 233
    const/4 v9, -0x1

    goto :goto_0

    .line 231
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 237
    :cond_9
    const/4 v9, 0x0

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "len1":I
    .end local v6    # "len2":I
    .end local v7    # "versionArray1":[Ljava/lang/String;
    .end local v8    # "versionArray2":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lhfh;->a:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .locals 12
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move-object v0, v9

    .line 186
    :cond_1
    :goto_0
    return-object v0

    .line 54
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;-><init>()V

    .line 56
    .local v0, "appInfo":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    const-string/jumbo v10, "app_id"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    .line 58
    const-string/jumbo v10, "size"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 59
    const-string/jumbo v10, "size"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->size:J

    .line 61
    :cond_3
    const-string/jumbo v10, "patch"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->patch:Ljava/lang/String;

    .line 62
    const-string/jumbo v10, "online"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->online:I

    .line 63
    const-string/jumbo v10, "fallback_base_url"

    .line 64
    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->fallback_base_url:Ljava/lang/String;

    .line 65
    const-string/jumbo v10, "package_url"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    .line 66
    const-string/jumbo v10, "version"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    .line 67
    const-string/jumbo v10, "app_desc"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_dsec:Ljava/lang/String;

    .line 68
    const-string/jumbo v10, "vhost"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    .line 69
    const-string/jumbo v10, "nbl_id"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbl_id:Ljava/lang/String;

    .line 70
    const-string/jumbo v10, "name"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->name:Ljava/lang/String;

    .line 71
    const-string/jumbo v10, "slogan"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->slogan:Ljava/lang/String;

    .line 74
    const-string/jumbo v10, "extend_info"

    invoke-static {p0, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 76
    .local v1, "extendInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "api_permission"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "permission":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 78
    const-string/jumbo v10, "api_permission"

    invoke-virtual {v1, v10, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_4
    const-string/jumbo v10, "package_nick"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "packageId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 82
    const-string/jumbo v10, "package_nick"

    invoke-virtual {v1, v10, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_5
    const-string/jumbo v10, "scene"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "sceneValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 87
    const-string/jumbo v10, "scene"

    invoke-virtual {v1, v10, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_6
    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->scene:Ljava/lang/String;

    .line 91
    const-string/jumbo v10, "local_report"

    invoke-static {p0, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 92
    .local v3, "localReport":I
    iput v3, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->localReport:I

    .line 95
    const-string/jumbo v10, "launchParams"

    invoke-static {v1, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 96
    .local v2, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "nbapptype"

    invoke-static {v2, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "nbAppType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 98
    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbAppType:Ljava/lang/String;

    .line 104
    :goto_1
    const-string/jumbo v9, "preset"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, "presetValue":I
    if-eqz v7, :cond_7

    .line 106
    const-string/jumbo v9, "preset"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info_jo:Ljava/lang/String;

    .line 111
    const-string/jumbo v9, "third_platform"

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->third_platform:Ljava/lang/String;

    .line 113
    const-string/jumbo v9, "app_type"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_type:I

    .line 115
    const-string/jumbo v9, "app_channel"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_channel:I

    .line 117
    const-string/jumbo v9, "main_url"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    .line 118
    const-string/jumbo v9, "system_max"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_max:Ljava/lang/String;

    .line 119
    const-string/jumbo v9, "system_min"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_min:Ljava/lang/String;

    .line 122
    const-string/jumbo v9, "download_type"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->auto_install:I

    .line 123
    const-string/jumbo v9, "icon_url"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->icon_url:Ljava/lang/String;

    .line 126
    const-string/jumbo v9, "release_type"

    invoke-static {p0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->release_type:Ljava/lang/String;

    .line 127
    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->release_type:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 128
    const-string/jumbo v9, "ONLINE"

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->release_type:Ljava/lang/String;

    .line 131
    :cond_8
    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->patch:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    const-string/jumbo v9, "2018030202303012"

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 161
    sget-object v9, Lhfh;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "appInfo.app_id set app_channel 4 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v9, 0x4

    iput v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_channel:I

    goto/16 :goto_0

    .line 100
    .end local v7    # "presetValue":I
    :cond_9
    const-string/jumbo v9, "nat"

    invoke-static {v2, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbAppType:Ljava/lang/String;

    goto/16 :goto_1
.end method
