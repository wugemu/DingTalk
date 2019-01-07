.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# instance fields
.field private abnormalUidSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public alreadyMigrateNum:J

.field public existMailNum:J

.field private folderId:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private leftUID:J

.field private rightUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getAbnormalUidSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->abnormalUidSet:Ljava/util/List;

    return-object v0
.end method

.method public getAlreadyMigrateNum()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->alreadyMigrateNum:J

    return-wide v0
.end method

.method public getExistMailNum()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->existMailNum:J

    return-wide v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftUID()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->leftUID:J

    return-wide v0
.end method

.method public getRightUID()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->rightUID:J

    return-wide v0
.end method

.method public setAbnormalUidSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "abnormalUidSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->abnormalUidSet:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setAlreadyMigrateNum(J)V
    .locals 1
    .param p1, "alreadyMigrateNum"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->alreadyMigrateNum:J

    .line 87
    return-void
.end method

.method public setExistMailNum(J)V
    .locals 1
    .param p1, "existMailNum"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->existMailNum:J

    .line 79
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->folderId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->folderName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLeftUID(J)V
    .locals 1
    .param p1, "leftUID"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->leftUID:J

    .line 59
    return-void
.end method

.method public setRightUID(J)V
    .locals 1
    .param p1, "rightUID"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;->rightUID:J

    .line 65
    return-void
.end method
