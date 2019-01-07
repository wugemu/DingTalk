.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;
.super Ljava/lang/Object;
.source "AlertMessage.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->a:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->c:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->d:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->e:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->f:Z

    return-void
.end method


# virtual methods
.method public getMsg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNegative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPositive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isShowIcon()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->f:Z

    return v0
.end method

.method public setMsg1(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMsg2(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg2"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setNegative(Ljava/lang/String;)V
    .locals 0
    .param p1, "negative"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPositive(Ljava/lang/String;)V
    .locals 0
    .param p1, "positive"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 0
    .param p1, "showIcon"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->f:Z

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->e:Ljava/lang/String;

    .line 52
    return-void
.end method
