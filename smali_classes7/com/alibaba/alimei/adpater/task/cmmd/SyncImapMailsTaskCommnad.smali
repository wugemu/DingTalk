.class public Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncImapMailsTaskCommnad.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFolderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->buildFromParcel(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mFolderId:J

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderId"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 23
    iput-wide p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mFolderId:J

    .line 24
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
    .line 34
    new-instance v0, Lqz;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mFolderId:J

    invoke-direct {v0, v1, v2, v3}, Lqz;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SyncImapMailsTaskCommnad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mFolderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
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
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 52
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SyncImapMailsTaskCommnad;->mFolderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    return-void
.end method
