.class public Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;
.super Ljava/lang/Object;
.source "H5AppPoolBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "nebula_app_pool"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COL_APP_ID:Ljava/lang/String; = "app_id"

.field public static final COL_APP_POOL_ID:Ljava/lang/String; = "app_pool_id"

.field public static final COL_IS_LIMIT:Ljava/lang/String; = "is_limit"

.field public static final COL_MAP:Ljava/lang/String; = "is_mapping"

.field public static final COL_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private app_pool_id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
        index = true
        unique = true
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

.field private nbl_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private update_app_time:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_pool_id()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->app_pool_id:I

    return v0
.end method

.method public getIs_limit()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->is_limit:I

    return v0
.end method

.method public getIs_mapping()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->is_mapping:I

    return v0
.end method

.method public getNbl_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->nbl_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_app_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->update_app_time:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->app_id:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setApp_pool_id(I)V
    .locals 0
    .param p1, "app_pool_id"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->app_pool_id:I

    .line 60
    return-void
.end method

.method public setIs_limit(I)V
    .locals 0
    .param p1, "is_limit"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->is_limit:I

    .line 92
    return-void
.end method

.method public setIs_mapping(I)V
    .locals 0
    .param p1, "is_mapping"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->is_mapping:I

    .line 76
    return-void
.end method

.method public setNbl_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "nbl_id"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->nbl_id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUpdate_app_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_app_time"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->update_app_time:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;->version:Ljava/lang/String;

    .line 100
    return-void
.end method
