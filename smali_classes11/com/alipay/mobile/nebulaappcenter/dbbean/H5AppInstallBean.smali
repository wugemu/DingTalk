.class public Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;
.super Ljava/lang/Object;
.source "H5AppInstallBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "nebula_app_install"
.end annotation


# static fields
.field public static final COL_APP_ID:Ljava/lang/String; = "install_appId"

.field public static final COL_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private installPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private install_appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private install_id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
        index = true
        unique = true
    .end annotation
.end field

.field private install_userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "user_id"
    .end annotation
.end field

.field private install_version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->installPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInstall_appId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_appId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstall_id()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_id:I

    return v0
.end method

.method public getInstall_userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_userId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstall_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_version:Ljava/lang/String;

    return-object v0
.end method

.method public setInstallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "installPath"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->installPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInstall_appId(Ljava/lang/String;)V
    .locals 0
    .param p1, "install_appId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_appId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setInstall_id(I)V
    .locals 0
    .param p1, "install_id"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_id:I

    .line 65
    return-void
.end method

.method public setInstall_userId(Ljava/lang/String;)V
    .locals 0
    .param p1, "install_userId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_userId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setInstall_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "install_version"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;->install_version:Ljava/lang/String;

    .line 57
    return-void
.end method
