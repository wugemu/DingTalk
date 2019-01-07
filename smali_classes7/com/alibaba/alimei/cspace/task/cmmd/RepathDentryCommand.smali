.class public Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "RepathDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RepathCommand"


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

.field private newPath:Ljava/lang/String;

.field private rename:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->newPath:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->autoRename:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->rename:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;
    .param p4, "autoRename"    # Z
    .param p5, "rename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->newPath:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->autoRename:Z

    .line 34
    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->rename:Z

    .line 35
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ltx;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->newPath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->autoRename:Z

    iget-boolean v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->rename:Z

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RepathCommand:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":repath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "sbBizUuid":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 47
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->dentryModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->newPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->autoRename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->rename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/RepathDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
