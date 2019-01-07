.class public Lcom/alipay/mobile/security/faceauth/model/InspectorItem;
.super Ljava/lang/Object;
.source "InspectorItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3f3L


# instance fields
.field private cpuUsable:Z

.field private hasCameraPermission:Z

.field private hasFrontCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->cpuUsable:Z

    .line 9
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasCameraPermission:Z

    .line 10
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasFrontCamera:Z

    return-void
.end method


# virtual methods
.method public isCpuUsable()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->cpuUsable:Z

    return v0
.end method

.method public isHasCameraPermission()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasCameraPermission:Z

    return v0
.end method

.method public isHasFrontCamera()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasFrontCamera:Z

    return v0
.end method

.method public setCpuUsable(Z)V
    .locals 0
    .param p1, "cpuUsable"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->cpuUsable:Z

    .line 18
    return-void
.end method

.method public setHasCameraPermission(Z)V
    .locals 0
    .param p1, "hasCameraPermission"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasCameraPermission:Z

    .line 26
    return-void
.end method

.method public setHasFrontCamera(Z)V
    .locals 0
    .param p1, "hasFrontCamera"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/model/InspectorItem;->hasFrontCamera:Z

    .line 34
    return-void
.end method
