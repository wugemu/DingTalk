.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;
.super Ljava/lang/Object;
.source "H5PushBizUtil.java"


# static fields
.field private static h5BridgeContext:Liny;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getH5BridgeContext()Liny;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->h5BridgeContext:Liny;

    return-object v0
.end method

.method public static setH5BridgeContext(Liny;)V
    .locals 0
    .param p0, "bridgeContext"    # Liny;

    .prologue
    .line 14
    sput-object p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->h5BridgeContext:Liny;

    .line 15
    return-void
.end method
