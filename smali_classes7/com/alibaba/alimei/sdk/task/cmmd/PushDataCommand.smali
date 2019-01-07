.class public Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "PushDataCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mBizUUID:Ljava/lang/String;

.field private final mCurrentTime:J

.field private final mFolders:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

.field private final mIsHandleSendStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mBizUUID:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mAccountName:Ljava/lang/String;

    .line 92
    const-class v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mFolders:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mCurrentTime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mIsHandleSendStatus:Z

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folders"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    .param p3, "isHandleSendStatus"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mBizUUID:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mAccountName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mFolders:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mCurrentTime:J

    .line 57
    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mIsHandleSendStatus:Z

    .line 58
    return-void
.end method

.method public static buildPushCommand(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "folders"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;Z)V

    goto :goto_0
.end method

.method public static buildPushMailSendStatusCommand(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;Z)V

    .line 44
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;
    goto :goto_0
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    new-instance v0, Lahm;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mFolders:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mIsHandleSendStatus:Z

    invoke-direct {v0, v1, v2, v3}, Lahm;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;Z)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mBizUUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PUSHCMMD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mCurrentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mIsHandleSendStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mBizUUID:Ljava/lang/String;

    .line 78
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mBizUUID:Ljava/lang/String;

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
    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mFolders:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->mIsHandleSendStatus:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/PushDataCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
