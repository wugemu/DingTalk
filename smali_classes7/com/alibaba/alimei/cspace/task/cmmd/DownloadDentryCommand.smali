.class public Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "DownloadDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DownloadDentryCommand"


# instance fields
.field private dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 47
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 26
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
    .line 30
    new-instance v0, Ltu;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0, v1, v2}, Ltu;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "DownloadDentryCommand:download"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/DownloadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
