.class public Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "CreateUploadIdCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CreateUploadIdCommand"


# instance fields
.field private id:J

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->id:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->size:J

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "size"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 24
    iput-wide p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->id:J

    .line 25
    iput-wide p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->size:J

    .line 26
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
    .line 30
    new-instance v0, Lts;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->id:J

    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->size:J

    invoke-direct/range {v0 .. v5}, Lts;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CreateUploadIdCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 41
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/CreateUploadIdCommand;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    return-void
.end method
