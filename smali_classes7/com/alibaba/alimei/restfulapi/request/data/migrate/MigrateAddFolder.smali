.class public Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "MigrateAddFolder.java"


# instance fields
.field private folderName:Ljava/lang/String;

.field private parentId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;->parentId:I

    return v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;->folderName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "parentId"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/migrate/MigrateAddFolder;->parentId:I

    .line 21
    return-void
.end method
