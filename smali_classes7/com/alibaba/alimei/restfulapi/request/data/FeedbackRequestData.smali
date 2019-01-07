.class public Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "FeedbackRequestData.java"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private os:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->content:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->os:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->os:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->deviceModel:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->appVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->appname:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->appVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->content:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->deviceModel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/FeedbackRequestData;->os:Ljava/lang/String;

    .line 42
    return-void
.end method
