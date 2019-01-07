.class public Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MailDetailRequestData.java"


# instance fields
.field private from:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private needTag:Z

.field private onlyBody:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->needTag:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "onlyBody"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->needTag:Z

    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->itemId:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->onlyBody:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedTag()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->needTag:Z

    return v0
.end method

.method public isOnlyBody()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->onlyBody:Z

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->from:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->itemId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->messageId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setNeedTag(Z)V
    .locals 0
    .param p1, "needTag"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->needTag:Z

    .line 56
    return-void
.end method

.method public setOnlyBody(Z)V
    .locals 0
    .param p1, "onlyBody"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MailDetailRequestData;->onlyBody:Z

    .line 41
    return-void
.end method
