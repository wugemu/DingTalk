.class public Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SearchDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SearchDentryCommand"


# instance fields
.field private key:Ljava/lang/String;

.field private offset:I

.field private pageSize:I

.field private spaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->spaceIds:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->spaceIds:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->key:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->offset:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->pageSize:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->spaceIds:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->key:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->offset:I

    .line 34
    iput p5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->pageSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ltz;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->spaceIds:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->key:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->offset:I

    iget v5, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->pageSize:I

    invoke-direct/range {v0 .. v5}, Ltz;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SearchDentryCommand"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->spaceIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/SearchDentryCommand;->pageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
