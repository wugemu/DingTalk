.class public final enum Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
.super Ljava/lang/Enum;
.source "H5AppInstallStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_ACQUIRE_INFO:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_DOWNLOAD:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

.field public static final enum APP_INSTALL_STEP_UNZIP:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string/jumbo v1, "APP_INSTALL_STEP_ACQUIRE_INFO"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_ACQUIRE_INFO:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string/jumbo v1, "APP_INSTALL_STEP_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_DOWNLOAD:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    const-string/jumbo v1, "APP_INSTALL_STEP_UNZIP"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_UNZIP:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_ACQUIRE_INFO:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_DOWNLOAD:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->APP_INSTALL_STEP_UNZIP:Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->$VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->$VALUES:[Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/appcenter/util/H5AppInstallStep;

    return-object v0
.end method
