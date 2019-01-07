.class public Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;
.super Ljava/lang/Object;
.source "BehaviorMine.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->a:I

    .line 6
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->b:I

    .line 7
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->c:I

    return-void
.end method


# virtual methods
.method public getActcnt()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->a:I

    return v0
.end method

.method public getDircnt()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->c:I

    return v0
.end method

.method public getVidcnt()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->b:I

    return v0
.end method

.method public setActcnt(I)V
    .locals 0
    .param p1, "actcnt"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->a:I

    .line 15
    return-void
.end method

.method public setDircnt(I)V
    .locals 0
    .param p1, "dircnt"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->c:I

    .line 31
    return-void
.end method

.method public setVidcnt(I)V
    .locals 0
    .param p1, "vidcnt"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/behavior/BehaviorMine;->b:I

    .line 23
    return-void
.end method
