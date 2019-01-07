.class public Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "AppInfoEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_lightapp_app_app_info"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_lightapp_app_app_info"

.field private static final TAG:Ljava/lang/String; = "AppInfoEntry"


# instance fields
.field public app_channel:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "app_channel"
        sort = 0x18
    .end annotation
.end field

.field public app_dsec:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "app_dsec"
        sort = 0x6
    .end annotation
.end field

.field public app_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "tb_lightapp_app_app_info_idx_app_id_version:1"
        name = "app_id"
        sort = 0x11
    .end annotation
.end field

.field public app_type:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "app_type"
        sort = 0x17
    .end annotation
.end field

.field public auto_install:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "auto_install"
        sort = 0x5
    .end annotation
.end field

.field public extend_info:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extend_info"
        sort = 0xb
    .end annotation
.end field

.field public fallback_base_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "fallback_base_url"
        sort = 0x7
    .end annotation
.end field

.field public icon_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "icon_url"
        sort = 0x8
    .end annotation
.end field

.field public is_limit:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "is_limit"
        sort = 0x15
    .end annotation
.end field

.field public is_mapping:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "is_mapping"
        sort = 0x13
    .end annotation
.end field

.field public localReport:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "local_report"
        sort = 0x1a
    .end annotation
.end field

.field public main_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "main_url"
        sort = 0xe
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "name"
        sort = 0x2
    .end annotation
.end field

.field public nbAppType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nb_app_type"
        sort = 0x1b
    .end annotation
.end field

.field public nbId:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nbid"
        sort = 0x1
    .end annotation
.end field

.field public nbl_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nbl_id"
        sort = 0x1c
    .end annotation
.end field

.field public online:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "online"
        sort = 0x4
    .end annotation
.end field

.field public package_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "package_url"
        sort = 0xc
    .end annotation
.end field

.field public patch:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "patch"
        sort = 0x3
    .end annotation
.end field

.field public release_type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "release_type"
        sort = 0x19
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "size"
        sort = 0xd
    .end annotation
.end field

.field public slogan:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "slogan"
        sort = 0x1d
    .end annotation
.end field

.field public sub_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sub_url"
        sort = 0x9
    .end annotation
.end field

.field public system_max:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "system_max"
        sort = 0xf
    .end annotation
.end field

.field public system_min:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "system_min"
        sort = 0x10
    .end annotation
.end field

.field public third_platform:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "third_platform"
        sort = 0x16
    .end annotation
.end field

.field public unAvailableReason:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "unAvailable_reason"
        sort = 0x1e
    .end annotation
.end field

.field public update_app_time:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "update_app_time"
        sort = 0x14
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "tb_lightapp_app_app_info_idx_app_id_version:2"
        name = "version"
        sort = 0x12
    .end annotation
.end field

.field public vhost:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "vhost"
        sort = 0xa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 136
    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .locals 11
    .param p0, "h5AppInfoBean"    # Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    .prologue
    .line 301
    new-instance v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;-><init>()V

    .line 303
    .local v0, "appInfo":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->name:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->name:Ljava/lang/String;

    .line 304
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->patch:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->patch:Ljava/lang/String;

    .line 305
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->online:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->online:I

    .line 306
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->auto_install:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->auto_install:I

    .line 307
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_dsec:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_dsec:Ljava/lang/String;

    .line 308
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->fallback_base_url:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->fallback_base_url:Ljava/lang/String;

    .line 309
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->icon_url:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->icon_url:Ljava/lang/String;

    .line 310
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->sub_url:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->sub_url:Ljava/lang/String;

    .line 311
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->vhost:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    .line 312
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->extend_info:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info_jo:Ljava/lang/String;

    .line 313
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->package_url:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    .line 314
    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->size:J

    iput-wide v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->size:J

    .line 315
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->main_url:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    .line 316
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->system_max:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_max:Ljava/lang/String;

    .line 317
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->system_min:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_min:Ljava/lang/String;

    .line 318
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_id:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    .line 319
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->version:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    .line 320
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->third_platform:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->third_platform:Ljava/lang/String;

    .line 321
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_type:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_type:I

    .line 322
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_channel:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_channel:I

    .line 323
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->release_type:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->release_type:Ljava/lang/String;

    .line 324
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->is_mapping:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->is_mapping:I

    .line 325
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->is_limit:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->is_mapping:I

    .line 326
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->update_app_time:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    .line 327
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->localReport:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->localReport:I

    .line 328
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->nbAppType:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbAppType:Ljava/lang/String;

    .line 329
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->nbl_id:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbl_id:Ljava/lang/String;

    .line 330
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->slogan:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->slogan:Ljava/lang/String;

    .line 331
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->unAvailableReason:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->unAvailableReason:Ljava/lang/String;

    .line 334
    :try_start_0
    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info_jo:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 335
    .local v2, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 336
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    .line 338
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 337
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v8, "host"

    const/4 v9, 0x0

    .line 341
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 343
    .local v5, "hostJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 344
    :cond_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 345
    .restart local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "enable"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v8, "dev"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v8, "test"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v8, "online"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_1
    const-string/jumbo v8, "host"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v8, "launchParams"

    const/4 v9, 0x0

    .line 355
    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 357
    .local v6, "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "url"

    .line 358
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    .line 359
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 361
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 365
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 366
    .restart local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_4
    const-string/jumbo v8, "launchParams"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iput-object v7, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info:Ljava/util/Map;

    .line 408
    .end local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 374
    .restart local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 375
    .local v3, "extraJO":Lcom/alibaba/fastjson/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 377
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "NebulaApp"

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 379
    .restart local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v8, "launchParams"

    invoke-virtual {v3, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 384
    .local v4, "host":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "enable"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string/jumbo v8, "dev"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v8, "test"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v8, "online"

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v8, "host"

    invoke-virtual {v3, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    const/4 v10, 0x0

    .line 393
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 392
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 391
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v8, "host"

    const-string/jumbo v9, "host"

    const/4 v10, 0x0

    .line 397
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 396
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v8, "launchParams"

    const-string/jumbo v9, "launchParams"

    const/4 v10, 0x0

    .line 400
    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 399
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 398
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iput-object v7, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 405
    .end local v2    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "extraJO":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "host":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AppInfoEntry"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static toDBEntry(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;Z)Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    .locals 12
    .param p0, "appInfo"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .param p1, "useDev"    # Z

    .prologue
    .line 171
    new-instance v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    invoke-direct {v3}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;-><init>()V

    .line 173
    .local v3, "h5AppInfoBean":Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->name:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->name:Ljava/lang/String;

    .line 174
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->patch:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->patch:Ljava/lang/String;

    .line 175
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->online:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->online:I

    .line 176
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->auto_install:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->auto_install:I

    .line 177
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_dsec:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_dsec:Ljava/lang/String;

    .line 178
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->fallback_base_url:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->fallback_base_url:Ljava/lang/String;

    .line 179
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->icon_url:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->icon_url:Ljava/lang/String;

    .line 180
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->sub_url:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->sub_url:Ljava/lang/String;

    .line 181
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->vhost:Ljava/lang/String;

    .line 182
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info_jo:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->extend_info:Ljava/lang/String;

    .line 183
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->package_url:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->package_url:Ljava/lang/String;

    .line 184
    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->size:J

    iput-wide v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->size:J

    .line 185
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->main_url:Ljava/lang/String;

    .line 186
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_max:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->system_max:Ljava/lang/String;

    .line 187
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->system_min:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->system_min:Ljava/lang/String;

    .line 188
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_id:Ljava/lang/String;

    .line 189
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->version:Ljava/lang/String;

    .line 190
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->third_platform:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->third_platform:Ljava/lang/String;

    .line 191
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_type:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_type:I

    .line 192
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_channel:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->app_channel:I

    .line 193
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->release_type:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->release_type:Ljava/lang/String;

    .line 194
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbl_id:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->nbl_id:Ljava/lang/String;

    .line 195
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->nbAppType:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->nbAppType:Ljava/lang/String;

    .line 196
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->slogan:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->slogan:Ljava/lang/String;

    .line 197
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->unAvailableReason:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->unAvailableReason:Ljava/lang/String;

    .line 200
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->is_mapping:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->is_mapping:I

    .line 201
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->is_limit:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->is_limit:I

    .line 203
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->syncTime:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 204
    const-string/jumbo v8, "AppInfoEntry"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setUpdate_app_time for syncTime "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->syncTime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->syncTime:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->update_app_time:Ljava/lang/String;

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->syncTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->update_app_time:Ljava/lang/String;

    .line 211
    :goto_0
    iget v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->localReport:I

    iput v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->localReport:I

    .line 215
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info_jo:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 216
    .local v1, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 217
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    .line 219
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v8, "host"

    const/4 v9, 0x0

    .line 222
    invoke-static {v1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

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

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string/jumbo v8, "test"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v8, "online"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

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
    invoke-static {v1, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 237
    .local v6, "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "url"

    .line 238
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    .line 239
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 241
    const-string/jumbo v8, "url"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 245
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 246
    .restart local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_4
    const-string/jumbo v8, "launchParams"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "launcherJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-nez p1, :cond_6

    .line 292
    invoke-static {}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a()Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;

    move-result-object v8

    .line 1054
    if-eqz p0, :cond_6

    .line 1058
    :try_start_1
    iget-object v9, v8, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a:Ljava/util/Map;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1059
    :try_start_2
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 1060
    iget-object v10, v8, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a:Ljava/util/Map;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 1061
    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a:Ljava/util/Map;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1062
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-interface {v8, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :cond_6
    :goto_3
    return-object v3

    .line 208
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->update_app_time:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    .restart local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    :try_start_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 255
    .local v2, "extraJO":Lcom/alibaba/fastjson/JSONObject;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 257
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "NebulaApp"

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 259
    .restart local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "url"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->main_url:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v8, "launchParams"

    invoke-virtual {v2, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 264
    .local v4, "host":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "enable"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v8, "dev"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v8, "test"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v8, "online"

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v8, "host"

    invoke-virtual {v2, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v8, "launchMode"

    const-string/jumbo v9, "launchMode"

    const/4 v10, 0x0

    .line 273
    invoke-static {v2, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 272
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 271
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v8, "host"

    const-string/jumbo v9, "host"

    const/4 v10, 0x0

    .line 277
    invoke-static {v2, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 276
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v8, "launchParams"

    const-string/jumbo v9, "launchParams"

    const/4 v10, 0x0

    .line 280
    invoke-static {v2, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 279
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 278
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->extend_info:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 285
    .end local v1    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "extraJO":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "host":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "hostJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "AppInfoEntry"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1064
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_4
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1065
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    invoke-interface {v10, v11, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a:Ljava/util/Map;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1069
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1070
    :catch_1
    move-exception v8

    .line 1071
    const-string/jumbo v9, "H5MemoryCache"

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
