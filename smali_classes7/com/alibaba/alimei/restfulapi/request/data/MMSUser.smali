.class public Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;
.super Ljava/lang/Object;
.source "MMSUser.java"


# instance fields
.field private emailAddr:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mt"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->mimeType:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->emailAddr:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getEmailAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->emailAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setEmailAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->emailAddr:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/MMSUser;->mimeType:Ljava/lang/String;

    .line 22
    return-void
.end method
