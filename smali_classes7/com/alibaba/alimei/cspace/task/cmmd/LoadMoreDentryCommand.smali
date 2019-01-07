.class public Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "LoadMoreDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LoadMoreDentryCommand"


# instance fields
.field private length:I

.field private loadFromLocal:Z

.field private loadMoreId:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->spaceId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->path:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadMoreId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->length:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadFromLocal:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "loadMoreId"    # Ljava/lang/String;
    .param p5, "loadFromLocal"    # Z
    .param p6, "length"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->spaceId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->path:Ljava/lang/String;

    .line 28
    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadFromLocal:Z

    .line 29
    iput-object p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadMoreId:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->length:I

    .line 31
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
    .line 35
    new-instance v0, Ltv;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->spaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadMoreId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadFromLocal:Z

    iget v6, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->length:I

    invoke-direct/range {v0 .. v6}, Ltv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LoadMoreDentryCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadMoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadFromLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->length:I

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
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadMoreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->loadFromLocal:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/task/cmmd/LoadMoreDentryCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
