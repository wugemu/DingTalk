.class public Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "CalendarResponseData.java"


# instance fields
.field mailId:Ljava/lang/String;

.field shouldNotify:Z

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldNotify()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->shouldNotify:Z

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isReponseValid()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->status:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->status:Ljava/lang/String;

    const-string/jumbo v1, "NEEDS-ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->mailId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setShouldNotify(Z)V
    .locals 0
    .param p1, "shouldNotify"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->shouldNotify:Z

    .line 32
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;->status:Ljava/lang/String;

    .line 24
    return-void
.end method
