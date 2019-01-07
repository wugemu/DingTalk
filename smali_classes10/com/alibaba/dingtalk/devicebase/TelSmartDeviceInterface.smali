.class public abstract Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;
.super Lckb;
.source "TelSmartDeviceInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/devicebase/TelSmartDeviceInterface;

    return-object v0
.end method
