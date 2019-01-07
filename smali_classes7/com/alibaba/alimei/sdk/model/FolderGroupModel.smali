.class public Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "FolderGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private changedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private deletedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountId:J

    .line 30
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountId:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountName:Ljava/lang/String;

    .line 121
    const-class v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 122
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getParcelables([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->addedFolders:Ljava/util/List;

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getParcelables([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->changedFolders:Ljava/util/List;

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getParcelables([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/FolderGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/FolderGroupModel$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static final getModelArrays(Ljava/util/List;)[Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)[",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 114
    .local v0, "model":[Lcom/alibaba/alimei/sdk/model/FolderModel;
    :goto_0
    return-object v0

    .line 113
    .end local v0    # "model":[Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-object v0, v1

    goto :goto_0
.end method

.method static final getParcelables([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 5
    .param p0, "ps"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 137
    :cond_1
    return-object v0

    .line 131
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v0, "ds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 133
    .local v1, "p":Landroid/os/Parcelable;
    instance-of v4, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_3

    .line 134
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .end local v1    # "p":Landroid/os/Parcelable;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountId:J

    return-wide v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAddedFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->addedFolders:Ljava/util/List;

    return-object v0
.end method

.method public getChangedFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->changedFolders:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getAddedFolders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getChangedFolders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    .line 88
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddedFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "addedFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->addedFolders:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setChangedFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "changedFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->changedFolders:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setDeletedFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "deletedFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FolderGroupModel [mAccountId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mAccountName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", addedFolders size ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->addedFolders:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 98
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", changedFolders size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->changedFolders:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    .line 99
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", deletedFolders="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    if-nez v2, :cond_2

    .line 100
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->addedFolders:Ljava/util/List;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->changedFolders:Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->deletedFolders:Ljava/util/List;

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getAddedFolders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getModelArrays(Ljava/util/List;)[Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getChangedFolders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getModelArrays(Ljava/util/List;)[Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getDeletedFolders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getModelArrays(Ljava/util/List;)[Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method
