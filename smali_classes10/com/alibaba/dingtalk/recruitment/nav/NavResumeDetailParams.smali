.class public Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;
.super Ljava/lang/Object;
.source "NavResumeDetailParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4df4213483bdddb3L


# instance fields
.field private mIsMosaicName:Z

.field private mResumeDetailUrl:Ljava/lang/String;

.field private mResumeStudentAvatarUrl:Ljava/lang/String;

.field private mResumeStudentName:Ljava/lang/String;

.field private mResumeVideoUrl:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isMosaicName"    # Z
    .param p2, "resumeStudentAvatarUrl"    # Ljava/lang/String;
    .param p3, "resumeStudentName"    # Ljava/lang/String;
    .param p4, "resumeDetailUrl"    # Ljava/lang/String;
    .param p5, "resumeVideoUrl"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mIsMosaicName:Z

    .line 27
    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeStudentAvatarUrl:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeStudentName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeDetailUrl:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeVideoUrl:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mToken:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getResumeDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeStudentAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeStudentAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeStudentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeStudentName:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mResumeVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isMosaicName()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->mIsMosaicName:Z

    return v0
.end method
