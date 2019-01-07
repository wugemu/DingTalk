.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;
.super Ljava/lang/Object;
.source "H5LoadingUtil.java"


# static fields
.field private static h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

.field private static h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field private static h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

.field private static h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    return-object v0
.end method

.method public static getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    return-object v0
.end method

.method public static getH5LoadingTypeListen()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    return-object v0
.end method

.method public static getH5StartAppInfo()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    return-object v0
.end method

.method public static setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V
    .locals 0
    .param p0, "h5LoadingActivity"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .prologue
    .line 52
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingActivity:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .line 53
    return-void
.end method

.method public static setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0
    .param p0, "h5LoadingManager"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .prologue
    .line 43
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 44
    return-void
.end method

.method public static setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V
    .locals 0
    .param p0, "h5LoadingTypeListen"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .prologue
    .line 25
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5LoadingTypeListen:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .line 26
    return-void
.end method

.method public static setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p0, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .prologue
    .line 34
    sput-object p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 35
    return-void
.end method
