.class public Lcom/mybank/android/phone/common/service/login/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# static fields
.field public static final ALIPAY_NAME:Ljava/lang/String; = "AccountInfo"

.field public static final ALIPAY_USERID:Ljava/lang/String; = "alipayUserId"

.field public static final CLIENT_KEY:Ljava/lang/String; = "clientKey"

.field public static final LOGIN_SCENE:Ljava/lang/String; = "loginScene"

.field public static final ROLE_ID:Ljava/lang/String; = "roleId"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SIT_ID:Ljava/lang/String; = "siteId"

.field public static final TAG:Ljava/lang/String; = "AccountInfo"

.field public static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private alipayName:Ljava/lang/String;

.field private alipayUserId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private corpId:Ljava/lang/String;

.field private loginScene:Ljava/lang/String;

.field private qrCode:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private sitId:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restore(Landroid/content/Context;)Lcom/mybank/android/phone/common/service/login/AccountInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-direct {v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;-><init>()V

    .line 59
    .local v0, "accountInfo":Lcom/mybank/android/phone/common/service/login/AccountInfo;
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "roleId"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setRoleId(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "alipayUserId"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setAlipayUserId(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "clientKey"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setClientKey(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "loginScene"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setLoginScene(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setUid(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "siteId"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Ljfm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSitId(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public cloneAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    new-instance v0, Lcom/mybank/android/phone/common/service/login/AccountInfo;

    invoke-direct {v0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;-><init>()V

    .line 52
    .local v0, "cloneAccountInfo":Lcom/mybank/android/phone/common/service/login/AccountInfo;
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setRoleId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mybank/android/phone/common/service/login/AccountInfo;->setSessionId(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public getAlipayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlipayUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->loginScene:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->qrCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sitId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "roleId"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->roleId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "alipayUserId"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "clientKey"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "loginScene"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->loginScene:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "uid"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->uid:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_4
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "AccountInfo"

    const-string/jumbo v2, "siteId"

    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sitId:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    invoke-static {p1, v1, v2, v0}, Ljfm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->roleId:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayUserId:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->clientKey:Ljava/lang/String;

    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->loginScene:Ljava/lang/String;

    goto :goto_3

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->uid:Ljava/lang/String;

    goto :goto_4

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sitId:Ljava/lang/String;

    goto :goto_5
.end method

.method public setAlipayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alipayName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAlipayUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "alipayUserId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->alipayUserId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->clientKey:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->code:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->corpId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setLoginScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginScene"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->loginScene:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setQrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "qrCode"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->qrCode:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->roleId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sessionId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sitId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->sitId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/AccountInfo;->uid:Ljava/lang/String;

    .line 155
    return-void
.end method
