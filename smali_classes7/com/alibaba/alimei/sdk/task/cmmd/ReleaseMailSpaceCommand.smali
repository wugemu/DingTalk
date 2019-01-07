.class public Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "ReleaseMailSpaceCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ReleaseMailStorageCommand"


# instance fields
.field private final attachmentRemainCount:I

.field private mAccountId:J

.field private mMailReleaseSpaceTask:Lahy;

.field private mTaskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    .line 20
    iput v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 24
    iput v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->attachmentRemainCount:I

    .line 25
    iput v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->attachmentRemainCount:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "attachmentRemainCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    .line 20
    iput v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 30
    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    .line 31
    iput p4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->attachmentRemainCount:I

    .line 32
    iput v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 33
    return-void
.end method

.method public static buildAllAccountReleaseCmmd()Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;-><init>()V

    .line 37
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    .line 38
    return-object v0
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mMailReleaseSpaceTask:Lahy;

    if-nez v0, :cond_0

    .line 45
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 46
    invoke-static {}, Lahy;->a()Lahy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mMailReleaseSpaceTask:Lahy;

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mMailReleaseSpaceTask:Lahy;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lahy;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    iget v4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->attachmentRemainCount:I

    invoke-direct {v0, v1, v2, v3, v4}, Lahy;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mMailReleaseSpaceTask:Lahy;

    goto :goto_0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ReleaseMailStorageCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 62
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->attachmentRemainCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->mTaskType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
