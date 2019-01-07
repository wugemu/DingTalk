.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;
.super Ljava/lang/Object;
.source "H5AppInfoUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppInfoUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beanToInfo(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 11
    .param p0, "h5AppInfoBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .prologue
    .line 176
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 178
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getPatch()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getOnline()I

    move-result v8

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->online:I

    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getAuto_install()I

    move-result v8

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    .line 182
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_dsec()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getFallback_base_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIcon_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSub_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVhost()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getExtend_info()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getPackage_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSize()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getMain_url()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSystem_max()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_max:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSystem_min()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_min:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getApp_id()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getThird_platform()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    .line 198
    iget v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_type:I

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    .line 199
    iget v8, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_channel:I

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 201
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getRelease_type()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIs_mapping()I

    move-result v8

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getIs_limit()I

    move-result v8

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getUpdate_app_time()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getLocalReport()I

    move-result v8

    iput v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getNbAppType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getNbl_id()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getSlogan()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->getUnAvailableReason()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    .line 215
    :try_start_0
    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 216
    .local v2, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 217
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    .line 219
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v8, "host"

    const/4 v9, 0x0

    .line 222
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 224
    .local v5, "hostJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 225
    :cond_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 226
    .restart local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "enable"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v8, "dev"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v8, "test"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v8, "online"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    const-string/jumbo v8, "host"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v8, "launchParams"

    const/4 v9, 0x0

    .line 236
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 238
    .local v6, "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "url"

    .line 239
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 240
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 242
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 246
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 247
    .restart local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_4
    const-string/jumbo v8, "launchParams"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;

    .line 289
    .end local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 255
    .restart local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 256
    .local v3, "extraJO":Lcom/alibaba/fastjson/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 258
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "NebulaApp"

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 260
    .restart local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v8, "launchParams"

    invoke-virtual {v3, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 265
    .local v4, "host":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "enable"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v8, "dev"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v8, "test"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v8, "online"

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v8, "host"

    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    const/4 v10, 0x0

    .line 274
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 273
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 272
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v8, "host"

    const-string/jumbo v9, "host"

    const/4 v10, 0x0

    .line 278
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 277
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v8, "launchParams"

    const-string/jumbo v9, "launchParams"

    const/4 v10, 0x0

    .line 281
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 280
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iput-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    .end local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "extraJO":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "host":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5AppInfoUtil"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static infoToBean(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .locals 10
    .param p0, "h5AppInfoBean"    # Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "useDev"    # Z

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    new-instance p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .end local p0    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;-><init>()V

    .line 42
    .restart local p0    # "h5AppInfoBean":Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
    :cond_0
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setName(Ljava/lang/String;)V

    .line 43
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setPatch(Ljava/lang/String;)V

    .line 44
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->online:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setOnline(I)V

    .line 45
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->auto_install:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setAuto_install(I)V

    .line 46
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_dsec:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_dsec(Ljava/lang/String;)V

    .line 47
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fallback_base_url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setFallback_base_url(Ljava/lang/String;)V

    .line 48
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIcon_url(Ljava/lang/String;)V

    .line 49
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->sub_url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSub_url(Ljava/lang/String;)V

    .line 50
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setVhost(Ljava/lang/String;)V

    .line 51
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setExtend_info(Ljava/lang/String;)V

    .line 52
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->package_url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setPackage_url(Ljava/lang/String;)V

    .line 53
    iget-wide v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->size:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSize(Ljava/lang/Long;)V

    .line 54
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setMain_url(Ljava/lang/String;)V

    .line 55
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_max:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSystem_max(Ljava/lang/String;)V

    .line 56
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->system_min:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSystem_min(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUser_id(Ljava/lang/String;)V

    .line 59
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_id(Ljava/lang/String;)V

    .line 60
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setVersion(Ljava/lang/String;)V

    .line 63
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->third_platform:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setThird_platform(Ljava/lang/String;)V

    .line 64
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_type:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_type(I)V

    .line 65
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setApp_channel(I)V

    .line 67
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->release_type:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setRelease_type(Ljava/lang/String;)V

    .line 68
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbl_id:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setNbl_id(Ljava/lang/String;)V

    .line 69
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->nbAppType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setNbAppType(Ljava/lang/String;)V

    .line 70
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setSlogan(Ljava/lang/String;)V

    .line 71
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUnAvailableReason(Ljava/lang/String;)V

    .line 74
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_mapping:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIs_mapping(I)V

    .line 75
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->is_limit:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setIs_limit(I)V

    .line 77
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 78
    const-string/jumbo v7, "H5AppInfoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setUpdate_app_time for syncTime "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    iput-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->syncTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUpdate_app_time(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->localReport:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setLocalReport(I)V

    .line 90
    :try_start_0
    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 91
    .local v1, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 92
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "launchMode"

    const-string/jumbo v8, "launchMode"

    .line 94
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v7, "host"

    const/4 v8, 0x0

    .line 97
    invoke-static {v1, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 99
    .local v4, "hostJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    .end local v4    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 101
    .restart local v4    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "enable"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v7, "dev"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v7, "test"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v7, "online"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_2
    const-string/jumbo v7, "host"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v7, "launchParams"

    const/4 v8, 0x0

    .line 111
    invoke-static {v1, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 112
    .local v5, "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "url"

    .line 113
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    .line 114
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    const-string/jumbo v7, "url"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 120
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .end local v5    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 121
    .restart local v5    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "url"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_5
    const-string/jumbo v7, "launchParams"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iput-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-nez p2, :cond_6

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->getInstance()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->saveAppInfoToMemory(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 171
    :cond_6
    return-object p0

    .line 83
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->setUpdate_app_time(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .restart local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 130
    .local v2, "extraJO":Lcom/alibaba/fastjson/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "launchMode"

    const-string/jumbo v8, "NebulaApp"

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 134
    .restart local v4    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "url"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->main_url:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v7, "launchParams"

    invoke-virtual {v2, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 139
    .local v3, "host":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "enable"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v7, "dev"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v7, "test"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v7, "online"

    iget-object v8, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->vhost:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v7, "host"

    invoke-virtual {v2, v7, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v7, "launchMode"

    const-string/jumbo v8, "launchMode"

    const/4 v9, 0x0

    .line 148
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 147
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v7, "host"

    const-string/jumbo v8, "host"

    const/4 v9, 0x0

    .line 152
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 151
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v7, "launchParams"

    const-string/jumbo v8, "launchParams"

    const/4 v9, 0x0

    .line 155
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 154
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 160
    .end local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "extraJO":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "host":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5AppInfoUtil"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
