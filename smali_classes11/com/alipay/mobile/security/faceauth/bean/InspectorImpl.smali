.class public Lcom/alipay/mobile/security/faceauth/bean/InspectorImpl;
.super Ljava/lang/Object;
.source "InspectorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/Inspector;


# instance fields
.field a:Lcom/alipay/mobile/security/faceauth/model/Inspector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;-><init>(Landroid/content/Context;Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/InspectorImpl;->a:Lcom/alipay/mobile/security/faceauth/model/Inspector;

    .line 16
    return-void
.end method


# virtual methods
.method public checkEnvironment()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/InspectorImpl;->a:Lcom/alipay/mobile/security/faceauth/model/Inspector;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/model/Inspector;->checkEnvironment()Z

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/bean/InspectorImpl;->a:Lcom/alipay/mobile/security/faceauth/model/Inspector;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/model/Inspector;->getErrorCode()I

    move-result v0

    return v0
.end method
