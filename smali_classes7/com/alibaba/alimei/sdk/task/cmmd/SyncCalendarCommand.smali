.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncCalendarCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_INCREMENT:I = 0x1

.field private static final SYNC_NEW_CALENDAR:I = 0x2

.field private static final SYNC_PUSH:I = 0x3


# instance fields
.field private mFullForceSync:Z

.field private mSyncType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(Z)V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mSyncType:I

    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mFullForceSync:Z

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "fullForceSync"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mSyncType:I

    .line 39
    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mFullForceSync:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fullForceSync"    # Z

    .prologue
    .line 34
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    invoke-virtual {v0}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "fullForceSync"    # Z
    .param p2, "syncType"    # I

    .prologue
    .line 43
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    invoke-virtual {v0}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(Ljava/lang/String;Z)V

    .line 44
    iput p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mSyncType:I

    .line 45
    return-void
.end method

.method public static buildIncrementCalendarCommand()Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(ZI)V

    return-object v0
.end method

.method public static buildPushCalendarCommand()Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    new-instance v0, Lahg;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mAccountName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mFullForceSync:Z

    invoke-direct {v0, v1, v2}, Lahg;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":SyncCalendarCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FullForceSync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mFullForceSync:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": SyncType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mSyncType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->mFullForceSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
