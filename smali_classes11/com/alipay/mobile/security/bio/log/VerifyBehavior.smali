.class public Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
.super Ljava/lang/Object;
.source "VerifyBehavior.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
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

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->g:Ljava/util/Map;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->h:I

    .line 50
    const-string/jumbo v0, "VerifyIdentity"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
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
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->h:I

    return v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->a:Ljava/lang/String;

    return-object v0
.end method

.method public removeExtParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->i:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setLoggerLevel(I)V
    .locals 0
    .param p1, "loggerLevel"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->h:I

    .line 119
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0
    .param p1, "param1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0
    .param p1, "param2"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->e:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 0
    .param p1, "param3"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->f:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUserCaseID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCaseID"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->a:Ljava/lang/String;

    .line 58
    return-void
.end method
