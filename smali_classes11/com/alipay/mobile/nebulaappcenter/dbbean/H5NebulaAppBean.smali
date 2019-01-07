.class public Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;
.super Ljava/lang/Object;
.source "H5NebulaAppBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "nebula_app_info_table"
.end annotation


# static fields
.field public static final COL_APP_ID:Ljava/lang/String; = "app_id"

.field public static final COL_APP_POOL_ID:Ljava/lang/String; = "app_pool_id"

.field public static final COL_IS_LIMIT:Ljava/lang/String; = "is_limit"

.field public static final COL_MAP:Ljava/lang/String; = "is_mapping"

.field public static final COL_UNAVAIL_REASON:Ljava/lang/String; = "unavailable_reason"

.field public static final COL_USER_ID:Ljava/lang/String; = "user_id"

.field public static final COL_VERSION:Ljava/lang/String; = "version"

.field public static final LOCAL_REPORT:Ljava/lang/String; = "localReport"


# instance fields
.field public app_channel:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private app_dsec:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public app_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private auto_install:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extend_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fallback_base_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private icon_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_limit:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_mapping:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private localReport:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private main_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nbAppType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nbId:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
        index = true
        unique = true
    .end annotation
.end field

.field private nbl_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private online:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private package_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private patch:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private release_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private slogan:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sub_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private system_max:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private system_min:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private third_platform:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private unAvailableReason:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "unavailable_reason"
        defaultValue = ""
    .end annotation
.end field

.field private update_app_time:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private user_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "user_id"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vhost:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_channel()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_channel:I

    return v0
.end method

.method public getApp_dsec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_dsec:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_type()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_type:I

    return v0
.end method

.method public getAuto_install()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->auto_install:I

    return v0
.end method

.method public getExtend_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->extend_info:Ljava/lang/String;

    return-object v0
.end method

.method public getFallback_base_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->fallback_base_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_limit()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->is_limit:I

    return v0
.end method

.method public getIs_mapping()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->is_mapping:I

    return v0
.end method

.method public getLocalReport()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->localReport:I

    return v0
.end method

.method public getMain_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->main_url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNbAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbAppType:Ljava/lang/String;

    return-object v0
.end method

.method public getNbId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbId:I

    return v0
.end method

.method public getNbl_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbl_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->online:I

    return v0
.end method

.method public getPackage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->package_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->patch:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->release_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->size:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->sub_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_max()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->system_max:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_min()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->system_min:Ljava/lang/String;

    return-object v0
.end method

.method public getThird_platform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->third_platform:Ljava/lang/String;

    return-object v0
.end method

.method public getUnAvailableReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->unAvailableReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_app_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->update_app_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->vhost:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_channel(I)V
    .locals 0
    .param p1, "app_channel"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_channel:I

    .line 185
    return-void
.end method

.method public setApp_dsec(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_dsec"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_dsec:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_id:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setApp_type(I)V
    .locals 0
    .param p1, "app_type"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->app_type:I

    .line 194
    return-void
.end method

.method public setAuto_install(I)V
    .locals 0
    .param p1, "auto_install"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->auto_install:I

    .line 285
    return-void
.end method

.method public setExtend_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "extend_info"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->extend_info:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setFallback_base_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "fallback_base_url"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->fallback_base_url:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon_url"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->icon_url:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setIs_limit(I)V
    .locals 0
    .param p1, "is_limit"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->is_limit:I

    .line 211
    return-void
.end method

.method public setIs_mapping(I)V
    .locals 0
    .param p1, "is_mapping"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->is_mapping:I

    .line 219
    return-void
.end method

.method public setLocalReport(I)V
    .locals 0
    .param p1, "localReport"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->localReport:I

    .line 167
    return-void
.end method

.method public setMain_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "main_url"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->main_url:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->name:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setNbAppType(Ljava/lang/String;)V
    .locals 0
    .param p1, "NbAppType"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbAppType:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setNbId(I)V
    .locals 0
    .param p1, "nbId"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbId:I

    .line 252
    return-void
.end method

.method public setNbl_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "nblId"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->nbl_id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setOnline(I)V
    .locals 0
    .param p1, "online"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->online:I

    .line 277
    return-void
.end method

.method public setPackage_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_url"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->package_url:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setPatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "patch"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->patch:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setRelease_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "release_type"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->release_type:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->size:Ljava/lang/Long;

    .line 349
    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0
    .param p1, "slogan"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->slogan:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSub_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub_url"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->sub_url:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setSystem_max(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_max"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->system_max:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setSystem_min(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_min"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->system_min:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setThird_platform(Ljava/lang/String;)V
    .locals 0
    .param p1, "third_platform"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->third_platform:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setUnAvailableReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "unAvailableReason"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->unAvailableReason:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setUpdate_app_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_app_time"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->update_app_time:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->user_id:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->version:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setVhost(Ljava/lang/String;)V
    .locals 0
    .param p1, "vhost"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;->vhost:Ljava/lang/String;

    .line 325
    return-void
.end method
