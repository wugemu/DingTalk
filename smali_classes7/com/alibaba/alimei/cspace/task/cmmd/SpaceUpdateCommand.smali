.class public Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SpaceUpdateCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SpaceUpdateCommand"


# instance fields
.field private byDomain:Z

.field private spaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->byDomain:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    .line 27
    iput-boolean p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->byDomain:Z

    .line 28
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    new-instance v0, Lub;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->byDomain:Z

    invoke-direct {v0, v1, v2, v3}, Lub;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "sbSpaces":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "spaceId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 43
    .end local v1    # "spaceId":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SpaceUpdateCommand"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->byDomain:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->spaceIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->byDomain:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SpaceUpdateCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
