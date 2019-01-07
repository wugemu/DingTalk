.class public Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;
.super Ljava/lang/Object;
.source "Dt3rdPartyAuthObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x254db944946fa1b5L


# instance fields
.field private authCode:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->authCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->errorCode:I

    .line 25
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;->errorMsg:Ljava/lang/String;

    .line 33
    return-void
.end method
