.class public Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;
.super Ljava/lang/Object;
.source "BehaviorTask.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->a:I

    .line 6
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->b:I

    .line 7
    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->c:Z

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDur()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->b:I

    return v0
.end method

.method public getIdx()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->a:I

    return v0
.end method

.method public getMine()Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->e:Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->f:F

    return v0
.end method

.method public isDscore()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->c:Z

    return v0
.end method

.method public setDscore(Z)V
    .locals 0
    .param p1, "dscore"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->c:Z

    .line 34
    return-void
.end method

.method public setDur(I)V
    .locals 0
    .param p1, "dur"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->b:I

    .line 26
    return-void
.end method

.method public setIdx(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->a:I

    .line 18
    return-void
.end method

.method public setMine(Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;)V
    .locals 0
    .param p1, "mine"    # Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->e:Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setQuality(F)V
    .locals 0
    .param p1, "quality"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorTask;->f:F

    .line 58
    return-void
.end method
