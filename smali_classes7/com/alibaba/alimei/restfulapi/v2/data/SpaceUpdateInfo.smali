.class public Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "SpaceUpdateInfo.java"


# instance fields
.field private capacity:J

.field private id:J

.field private modifiedTime:J

.field private usedStorage:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapacity()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->capacity:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->id:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->modifiedTime:J

    return-wide v0
.end method

.method public getUsedStorage()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->usedStorage:J

    return-wide v0
.end method

.method public setCapacity(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->capacity:J

    .line 36
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->id:J

    .line 20
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->modifiedTime:J

    .line 28
    return-void
.end method

.method public setUsedStorage(J)V
    .locals 1
    .param p1, "usedStorage"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;->usedStorage:J

    .line 44
    return-void
.end method
