.class public Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UploadDentryCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UploadDentryCommand"


# instance fields
.field private dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 50
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 27
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
    .line 31
    new-instance v0, Lue;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0, v1, v2}, Lue;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UploadDentryCommand:upload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":uploaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "bizUuid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload size biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 38
    return-object v0

    .line 36
    .end local v0    # "bizUuid":Ljava/lang/String;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/task/cmmd/UploadDentryCommand;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    return-void
.end method
