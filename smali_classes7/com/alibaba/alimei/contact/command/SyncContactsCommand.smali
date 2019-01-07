.class public Lcom/alibaba/alimei/contact/command/SyncContactsCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncContactsCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/command/SyncContactsCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNC_TYPE_BLACK:I = 0x3

.field public static final SYNC_TYPE_CONTACTS:I = 0x1

.field public static final SYNC_TYPE_RECENT:I = 0x4

.field public static final SYNC_TYPE_SELF:I = 0x2

.field private static final TYPE:I


# instance fields
.field private final forceSyncFull:Z

.field private final mSyncType:I

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "syncType"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "forceSyncFull"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    .line 52
    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid syncType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput p1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mSyncType:I

    .line 56
    iput-boolean p3, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->forceSyncFull:Z

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    .line 96
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->forceSyncFull:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mSyncType:I

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/command/SyncContactsCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/command/SyncContactsCommand$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mSyncType:I

    packed-switch v0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    return-object v0

    .line 69
    :pswitch_0
    new-instance v0, Lsy;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mAccountName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->forceSyncFull:Z

    invoke-direct {v0, v1, v2}, Lsy;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Lta;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lta;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v0, Lsx;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsx;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v0, Lsz;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lsz;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->task:Lyq;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->forceSyncFull:Z

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->getIntValue(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mSyncType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->forceSyncFull:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/alibaba/alimei/contact/command/SyncContactsCommand;->mSyncType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
