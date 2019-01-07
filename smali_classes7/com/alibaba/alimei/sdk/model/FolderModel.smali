.class public Lcom/alibaba/alimei/sdk/model/FolderModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "FolderModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_SESSION_FOLDER:J = -0x1L


# instance fields
.field public childrens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field public hasNewMail:Z

.field private id:J

.field public isPop:Z

.field public isPush:Z

.field public lastSyncTime:J

.field public layer:I

.field public mCareOrder:J

.field public mOrder:J

.field public name:Ljava/lang/String;

.field public parentServerId:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public serverType:I

.field public sessionChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I

.field public type:I

.field public unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 456
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 87
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    .line 31
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->id:J

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 87
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->id:J

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->layer:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 449
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    .line 454
    return-void
.end method

.method public static buildSessionFolder(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "sessionChildrenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(J)V

    .line 393
    .local v0, "sessionFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iput-object p0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->sessionChildrenIds:Ljava/util/List;

    .line 394
    const/16 v1, 0xb

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    .line 395
    return-object v0
.end method

.method public static isAllFavoriteFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 346
    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCalendarFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 371
    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x46

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomMailFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 388
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDraftFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 330
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInboxFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 322
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJunkFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 314
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutgoingFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 354
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecentReadFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 338
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSendFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 362
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSessinoFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 380
    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrashFolder(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 305
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSyncable()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v0}, Laja;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    const-string/jumbo v1, "local_"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childCount()I
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloneWithoutChildren()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->id:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(J)V

    .line 279
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    .line 282
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    .line 283
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    .line 284
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->layer:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->layer:I

    .line 285
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    .line 286
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    .line 287
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 288
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 289
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 290
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    .line 291
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->sessionChildrenIds:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->sessionChildrenIds:Ljava/util/List;

    .line 292
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    .line 293
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    .line 294
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    .line 296
    return-object v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->id:J

    return-wide v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllFavoriteFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCalendarFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCareFolder()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomMailFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 208
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraftFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxFolder()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJunkFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 183
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoSelectFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 233
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoingFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentReadFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessinoFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncableFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 241
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v0}, Laja;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    const-string/jumbo v1, "local_"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 224
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrashFolder()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FolderModel [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parentServerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasNewMail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCareOrder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 430
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 434
    return-void
.end method
