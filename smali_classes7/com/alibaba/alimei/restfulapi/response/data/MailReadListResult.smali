.class public Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;
.super Ljava/lang/Object;
.source "MailReadListResult.java"


# instance fields
.field private email:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

.field private maillist:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

.field private outdomain:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

.field public recipientCount:I

.field public shouldDetail:Z

.field public unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->email:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    return-object v0
.end method

.method public getMaillist()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->maillist:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    return-object v0
.end method

.method public getOutdomain()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->outdomain:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->recipientCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->unreadCount:I

    return v0
.end method

.method public isShouldDetail()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->shouldDetail:Z

    return v0
.end method

.method public setEmail(Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V
    .locals 0
    .param p1, "email"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->email:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .line 66
    return-void
.end method

.method public setMaillist(Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V
    .locals 0
    .param p1, "maillist"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->maillist:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .line 56
    return-void
.end method

.method public setOutdomain(Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;)V
    .locals 0
    .param p1, "outdomain"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->outdomain:Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    .line 46
    return-void
.end method

.method public setRecipientCount(I)V
    .locals 0
    .param p1, "recipientCount"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->recipientCount:I

    .line 72
    return-void
.end method

.method public setShouldDetail(Z)V
    .locals 0
    .param p1, "shouldDetail"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->shouldDetail:Z

    .line 84
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->unreadCount:I

    .line 78
    return-void
.end method
