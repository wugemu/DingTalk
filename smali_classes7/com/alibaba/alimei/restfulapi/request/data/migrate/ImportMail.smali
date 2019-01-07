.class public Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "ImportMail.java"


# instance fields
.field private folderId:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private read:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->read:Z

    return v0
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->folderId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->localPath:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;->read:Z

    .line 16
    return-void
.end method
