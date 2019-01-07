.class public Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SaveFileCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SaveFileCommand"


# instance fields
.field private autoRename:Z

.field private downloadUrl:Ljava/lang/String;

.field private overWrite:Z

.field private path:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->spaceId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->path:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->downloadUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->autoRename:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->overWrite:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "autoRename"    # Z
    .param p6, "overWrite"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->mAccountName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->spaceId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->path:Ljava/lang/String;

    .line 29
    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->autoRename:Z

    .line 30
    iput-boolean p6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->overWrite:Z

    .line 31
    iput-object p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->downloadUrl:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    new-instance v0, Ltr;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->spaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->downloadUrl:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->autoRename:Z

    iget-boolean v6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->overWrite:Z

    invoke-direct/range {v0 .. v6}, Ltr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SaveFileCommand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->autoRename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->overWrite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SaveFileCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
