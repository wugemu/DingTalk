.class public Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
.super Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
.source "CertificationResponse.java"


# static fields
.field private static final serialVersionUID:J = -0xa556c530b26150dL


# instance fields
.field private mImageUrl:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->mType:I

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->mImageUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->mType:I

    .line 34
    return-void
.end method
