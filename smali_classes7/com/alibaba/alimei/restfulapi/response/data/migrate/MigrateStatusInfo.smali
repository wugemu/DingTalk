.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;
.super Ljava/lang/Object;
.source "MigrateStatusInfo.java"


# instance fields
.field private expiredTime:J

.field private folderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private migrateNum:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->expiredTime:J

    return-wide v0
.end method

.method public getFolderInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->folderInfos:Ljava/util/List;

    return-object v0
.end method

.method public getMigrateNum()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->migrateNum:J

    return-wide v0
.end method

.method public setExpiredTime(J)V
    .locals 1
    .param p1, "expiredTime"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->expiredTime:J

    .line 22
    return-void
.end method

.method public setFolderInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "folderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/migrate/FolderInfo;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->folderInfos:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setMigrateNum(J)V
    .locals 1
    .param p1, "migrateNum"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateStatusInfo;->migrateNum:J

    .line 30
    return-void
.end method
