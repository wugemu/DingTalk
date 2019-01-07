.class public Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "ReportSpamRequestData.java"


# instance fields
.field public DestFolderId:Ljava/lang/String;

.field public MailId:Ljava/lang/String;

.field public Report:Z

.field public User:Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "destFolderId"    # Ljava/lang/String;
    .param p3, "report"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->Report:Z

    .line 20
    new-instance v0, Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;

    const-string/jumbo v1, "alimail_mt_mail"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->User:Lcom/alibaba/alimei/restfulapi/request/data/BaseUserRequest;

    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->MailId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->DestFolderId:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/ReportSpamRequestData;->Report:Z

    .line 24
    return-void
.end method
