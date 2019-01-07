.class public Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "CopyDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CopyDentryCommand"


# instance fields
.field private autoFixPath:Z

.field private autoRename:Z

.field private srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 55
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 56
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoRename:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoFixPath:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "srcDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "targetDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "autoRename"    # Z
    .param p5, "autoFixPath"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 28
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 29
    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoFixPath:Z

    .line 30
    iput-boolean p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoRename:Z

    .line 31
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
    .line 35
    new-instance v0, Ltq;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoRename:Z

    iget-boolean v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoFixPath:Z

    invoke-direct/range {v0 .. v5}, Ltq;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CopyDentryCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":copy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ":"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->srcDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->targetDentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoRename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->autoFixPath:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CopyDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
