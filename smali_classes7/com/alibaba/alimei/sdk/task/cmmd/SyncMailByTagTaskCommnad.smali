.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncMailByTagTaskCommnad.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private endTime:J

.field private mUUID:Ljava/lang/String;

.field private startTime:J

.field private tag:Ljava/lang/String;

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->task:Lyq;

    .line 56
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mUUID:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->buildFromParcel(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->tag:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->startTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->endTime:J

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->task:Lyq;

    .line 56
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mUUID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->tag:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->startTime:J

    .line 27
    iput-wide p5, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->endTime:J

    .line 28
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->task:Lyq;

    if-nez v0, :cond_0

    .line 51
    new-instance v1, Lahj;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->tag:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->startTime:J

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->endTime:J

    invoke-direct/range {v1 .. v7}, Lahj;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->task:Lyq;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mUUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mUUID:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->mUUID:Ljava/lang/String;

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
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailByTagTaskCommnad;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    return-void
.end method
