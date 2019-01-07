.class public Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "PersonalInfo.java"


# instance fields
.field private defaultSendEmail:Ljava/lang/String;

.field private mailDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "defSendMail"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->mailDisplayName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->defaultSendEmail:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getDefaultSendEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->defaultSendEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMailDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->mailDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultSendEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultSendMail"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->defaultSendEmail:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMailDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailDisplayName"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/PersonalInfo;->mailDisplayName:Ljava/lang/String;

    .line 19
    return-void
.end method
