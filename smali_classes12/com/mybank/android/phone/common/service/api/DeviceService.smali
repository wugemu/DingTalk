.class public abstract Lcom/mybank/android/phone/common/service/api/DeviceService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "DeviceService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract uploadDeviceInfo(Z)V
.end method
