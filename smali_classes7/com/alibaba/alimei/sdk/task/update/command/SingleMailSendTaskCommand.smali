.class public Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SingleMailSendTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountId:J

.field private mIsResetTaskTryCount:Z

.field private mUUID:Ljava/lang/String;

.field private messageId:J

.field private srcServerId:Ljava/lang/String;

.field private task:Lahz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->TAG:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mUUID:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->messageId:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->accountId:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->srcServerId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "srcServerId"    # Ljava/lang/String;
    .param p7, "isResetTaskTryCount"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mUUID:Ljava/lang/String;

    .line 26
    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->messageId:J

    .line 27
    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->accountId:J

    .line 28
    iput-object p6, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->srcServerId:Ljava/lang/String;

    .line 29
    iput-boolean p7, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    .line 30
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
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->task:Lahz;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lahz;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->messageId:J

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->srcServerId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lahz;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->task:Lahz;

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->task:Lahz;

    const/4 v1, 0x0

    .line 1109
    iput v1, v0, Lyr;->y:I

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->task:Lahz;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mUUID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->messageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "uuid":Ljava/lang/String;
    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mUUID:Ljava/lang/String;

    .line 59
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mUUID:Ljava/lang/String;

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 74
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->srcServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->mIsResetTaskTryCount:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
