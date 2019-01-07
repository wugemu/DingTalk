.class public Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncImapFlagsTaskCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEndUid:J

.field private final mFolderId:J

.field private final mStartUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mFolderId:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mStartUid:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mEndUid:J

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J
    .param p4, "startUid"    # J
    .param p6, "endUid"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 25
    iput-wide p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mFolderId:J

    .line 26
    iput-wide p4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mStartUid:J

    .line 27
    iput-wide p6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mEndUid:J

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
    .line 40
    new-instance v0, Lqx;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mFolderId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mStartUid:J

    iget-wide v6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mEndUid:J

    invoke-direct/range {v0 .. v7}, Lqx;-><init>(Ljava/lang/String;JJJ)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SyncImapFlagsTaskCommand"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mFolderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mStartUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mEndUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "uuid":Ljava/lang/String;
    return-object v1
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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 62
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mFolderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mStartUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapFlagsTaskCommand;->mEndUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    return-void
.end method
