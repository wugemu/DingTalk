.class public Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SingleDraftTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountId:J

.field private mUUID:Ljava/lang/String;

.field private messageId:J

.field private task:Laia;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mUUID:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->messageId:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->accountId:J

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mUUID:Ljava/lang/String;

    .line 25
    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->messageId:J

    .line 26
    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->accountId:J

    .line 27
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
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->task:Laia;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Laia;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->messageId:J

    invoke-direct/range {v0 .. v5}, Laia;-><init>(Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->task:Laia;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->task:Laia;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->messageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mUUID:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->mUUID:Ljava/lang/String;

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
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 58
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    return-void
.end method
