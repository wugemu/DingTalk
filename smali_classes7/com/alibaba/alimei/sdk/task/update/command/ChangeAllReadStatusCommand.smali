.class public Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "ChangeAllReadStatusCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountId:J

.field private mUUID:Ljava/lang/String;

.field private mailboxId:J

.field private readStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mUUID:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->accountId:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mailboxId:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->readStatus:Z

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "mailboxId"    # J
    .param p6, "readStatus"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mUUID:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->accountId:J

    .line 40
    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mailboxId:J

    .line 41
    iput-boolean p6, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->readStatus:Z

    .line 42
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
    .line 53
    new-instance v0, Lahs;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mailboxId:J

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->readStatus:Z

    invoke-direct/range {v0 .. v6}, Lahs;-><init>(Ljava/lang/String;JJZ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mailboxId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mUUID:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 68
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->mailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->readStatus:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
