.class public Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SyncCareOrdersCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncCareOrdersCommand"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mAccountName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mAccountName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lahh;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lahh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mUUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SyncCareOrdersCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mUUID:Ljava/lang/String;

    .line 48
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mUUID:Ljava/lang/String;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCareOrdersCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
