.class public Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
.super Ljava/lang/Object;
.source "AlertConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->e:I

    return v0
.end method

.method public getRightButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "leftButtonText"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->c:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setReturnCode(I)V
    .locals 0
    .param p1, "returnCode"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->e:I

    .line 43
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "rightButtonText"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->a:Ljava/lang/String;

    .line 19
    return-void
.end method
