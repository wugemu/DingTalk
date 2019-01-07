.class public Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "RevokeMailRequestData.java"


# static fields
.field public static final STATUS_ALL:Ljava/lang/String; = "ALL"

.field public static final STATUS_UNREAD:Ljava/lang/String; = "UNREAD"


# instance fields
.field public mailId:Ljava/lang/String;

.field public mailStatus:Ljava/lang/String;

.field public senderEAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "senderMail"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 32
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailStatus:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->senderEAddr:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "senderMail"    # Ljava/lang/String;
    .param p3, "mailStatus"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 32
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailStatus:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->senderEAddr:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailStatus:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getMailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailId:Ljava/lang/String;

    return-object v0
.end method

.method public getMailStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderEAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->senderEAddr:Ljava/lang/String;

    return-object v0
.end method

.method public setMailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMailStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailStatus"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->mailStatus:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSenderEAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderEAddr"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RevokeMailRequestData;->senderEAddr:Ljava/lang/String;

    .line 59
    return-void
.end method
