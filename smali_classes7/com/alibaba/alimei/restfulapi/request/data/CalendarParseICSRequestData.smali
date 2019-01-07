.class public Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "CalendarParseICSRequestData.java"


# instance fields
.field private content:Ljava/lang/String;

.field private user:Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->content:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->user:Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;

    .line 16
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->user:Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->content:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUser(Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;)V
    .locals 0
    .param p1, "user"    # Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/CalendarParseICSRequestData;->user:Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;

    .line 30
    return-void
.end method
