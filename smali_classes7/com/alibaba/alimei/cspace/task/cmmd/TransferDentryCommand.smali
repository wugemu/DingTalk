.class public Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "TransferDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoRename:Z

.field private dentryModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private isCut:Z

.field private overWrite:Z

.field private targetPath:Ljava/lang/String;

.field private targetSpaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetSpaceId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetPath:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->isCut:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->autoRename:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->overWrite:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "targetSpaceId"    # Ljava/lang/String;
    .param p4, "targetPath"    # Ljava/lang/String;
    .param p5, "isCut"    # Z
    .param p6, "autoRename"    # Z
    .param p7, "overWrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->mAccountName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetPath:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetSpaceId:Ljava/lang/String;

    .line 34
    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->isCut:Z

    .line 35
    iput-boolean p6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->autoRename:Z

    .line 36
    iput-boolean p7, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->overWrite:Z

    .line 37
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    new-instance v0, Lud;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetSpaceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetPath:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->isCut:Z

    iget-boolean v6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->autoRename:Z

    iget-boolean v7, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->overWrite:Z

    invoke-direct/range {v0 .. v7}, Lud;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TransferDentryCommand:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "uuid":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 50
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-boolean v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->isCut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->dentryModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->targetPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->isCut:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->autoRename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->overWrite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/TransferDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
