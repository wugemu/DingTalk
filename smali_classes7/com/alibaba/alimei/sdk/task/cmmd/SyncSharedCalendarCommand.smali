.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncSharedCalendarCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFullForceSync:Z

.field private mServerId:Ljava/lang/String;

.field private mSharedAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mSharedAccountName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mFullForceSync:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mServerId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "fullForceSync"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mSharedAccountName:Ljava/lang/String;

    .line 23
    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mFullForceSync:Z

    .line 24
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mServerId:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    new-instance v0, Lahn;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mSharedAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mServerId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mFullForceSync:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lahn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncSharedCalendarCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mSharedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mFullForceSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mSharedAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mFullForceSync:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
