.class public Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;
.super Ljava/lang/Object;
.source "VideoPlayParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x752563c3e449833bL


# instance fields
.field private mPageUrl:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mVideoPosterUrl:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "videoPosterUrl"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mPageUrl:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoPosterUrl:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoUrl:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mToken:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoPosterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mPageUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mToken:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVideoPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoPosterUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoPosterUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->mVideoUrl:Ljava/lang/String;

    .line 49
    return-void
.end method
