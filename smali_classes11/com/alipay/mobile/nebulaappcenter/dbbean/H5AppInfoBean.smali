.class public Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;
.super Ljava/lang/Object;
.source "H5AppInfoBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "nebula_app_table"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COL_POOL_ID:Ljava/lang/String; = "app_pool_id"


# instance fields
.field private app_dsec:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private app_pool_id:I
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

.field private main_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
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

.field private size:Ljava/lang/Long;
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
.method public getApp_dsec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->app_dsec:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_pool_id()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->app_pool_id:I

    return v0
.end method

.method public getAuto_install()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->auto_install:I

    return v0
.end method

.method public getExtend_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->extend_info:Ljava/lang/String;

    return-object v0
.end method

.method public getFallback_base_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->fallback_base_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMain_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->main_url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNbId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->nbId:I

    return v0
.end method

.method public getOnline()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->online:I

    return v0
.end method

.method public getPackage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->package_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->patch:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getSub_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->sub_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_max()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->system_max:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_min()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->system_min:Ljava/lang/String;

    return-object v0
.end method

.method public getVhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->vhost:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_dsec(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_dsec"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->app_dsec:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setApp_pool_id(I)V
    .locals 0
    .param p1, "app_pool_id"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->app_pool_id:I

    .line 86
    return-void
.end method

.method public setAuto_install(I)V
    .locals 0
    .param p1, "auto_install"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->auto_install:I

    .line 110
    return-void
.end method

.method public setExtend_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "extend_info"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->extend_info:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setFallback_base_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "fallback_base_url"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->fallback_base_url:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon_url"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->icon_url:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMain_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "main_url"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->main_url:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNbId(I)V
    .locals 0
    .param p1, "nbId"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->nbId:I

    .line 70
    return-void
.end method

.method public setOnline(I)V
    .locals 0
    .param p1, "online"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->online:I

    .line 102
    return-void
.end method

.method public setPackage_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_url"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->package_url:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setPatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "patch"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->patch:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->size:Ljava/lang/Long;

    .line 174
    return-void
.end method

.method public setSub_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub_url"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->sub_url:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setSystem_max(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_max"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->system_max:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setSystem_min(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_min"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->system_min:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setVhost(Ljava/lang/String;)V
    .locals 0
    .param p1, "vhost"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;->vhost:Ljava/lang/String;

    .line 150
    return-void
.end method
