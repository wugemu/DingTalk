.class public Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
.super Ljava/lang/Object;
.source "CertifyResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3660698c77b19120L


# instance fields
.field private mAttachInfo:Ljava/lang/String;

.field private mCertifyType:I

.field private mEncryptedKey:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mIsSucceed:Z

.field private mIvParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mAttachInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCertifyType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mCertifyType:I

    return v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mEncryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getIvParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mIvParameter:Ljava/lang/String;

    return-object v0
.end method

.method public isSucceed()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mIsSucceed:Z

    return v0
.end method

.method public setAttachInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachInfo"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mAttachInfo:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCertifyType(I)V
    .locals 0
    .param p1, "certifyType"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mCertifyType:I

    .line 67
    return-void
.end method

.method public setEncryptedKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "encryptedKey"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mEncryptedKey:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mErrorCode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mErrorMsg:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setIvParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "ivParameter"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mIvParameter:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSucceed(Z)V
    .locals 0
    .param p1, "succeed"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->mIsSucceed:Z

    .line 35
    return-void
.end method
