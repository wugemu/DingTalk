.class public Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "MailDeleteCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountId:J

.field private mUUID:Ljava/lang/String;

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mUUID:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->accountId:J

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mUUID:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->accountId:J

    .line 23
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
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->task:Lyq;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lahw;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->accountId:J

    invoke-direct {v0, v1, v2, v3}, Lahw;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->task:Lyq;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mUUID:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->mUUID:Ljava/lang/String;

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
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 53
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
