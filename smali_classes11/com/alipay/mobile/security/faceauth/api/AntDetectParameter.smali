.class public Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.super Ljava/lang/Object;
.source "AntDetectParameter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6fL


# instance fields
.field private action:I

.field private apdid:Ljava/lang/String;

.field private appID:I

.field private autoClose:Z

.field private enableNavPage:Z

.field private enablePrePoseAlert:Z

.field private extJson:Ljava/lang/String;

.field protected extProperty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;

.field private remoteUrl:Ljava/lang/String;

.field private scene:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->apdid:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->scene:I

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extProperty:Ljava/util/Map;

    .line 19
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enableNavPage:Z

    .line 20
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enablePrePoseAlert:Z

    return-void
.end method


# virtual methods
.method public addExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extProperty:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public enableNavPage()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enableNavPage:Z

    return v0
.end method

.method public enablePrePoseAlert()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enablePrePoseAlert:Z

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    return v0
.end method

.method public getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->appID:I

    return v0
.end method

.method public getExtJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    return-object v0
.end method

.method public getExtProperty()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extProperty:Ljava/util/Map;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->scene:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    .line 38
    return-void
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apdid"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->apdid:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setAppID(I)V
    .locals 0
    .param p1, "appID"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->appID:I

    .line 62
    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0
    .param p1, "autoClose"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    .line 70
    return-void
.end method

.method public setEnableNavPage(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enableNavPage:Z

    .line 102
    return-void
.end method

.method public setEnablePrePoseAlert(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->enablePrePoseAlert:Z

    .line 110
    return-void
.end method

.method public setExtJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "extJson"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->protocol:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setScene(I)V
    .locals 0
    .param p1, "scene"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->scene:I

    .line 86
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    .line 54
    return-void
.end method
