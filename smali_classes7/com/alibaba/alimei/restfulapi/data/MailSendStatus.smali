.class public Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;
.super Ljava/lang/Object;
.source "MailSendStatus.java"


# instance fields
.field public recipientCount:I

.field public shouldDetail:Z

.field public unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->recipientCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->unreadCount:I

    return v0
.end method

.method public isShouldDetail()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->shouldDetail:Z

    return v0
.end method

.method public setRecipientCount(I)V
    .locals 0
    .param p1, "recipientCount"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->recipientCount:I

    .line 34
    return-void
.end method

.method public setShouldDetail(Z)V
    .locals 0
    .param p1, "shouldDetail"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->shouldDetail:Z

    .line 42
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->unreadCount:I

    .line 50
    return-void
.end method
