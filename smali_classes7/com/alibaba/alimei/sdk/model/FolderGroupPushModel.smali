.class public Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "FolderGroupPushModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountId:J

    .line 25
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountId:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountName:Ljava/lang/String;

    .line 63
    const-class v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getParcelables([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->changedFolders:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountId:J

    return-wide v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountName:Ljava/lang/String;

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
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->changedFolders:Ljava/util/List;

    return-object v0
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
    .line 37
    .local p1, "changedFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->changedFolders:Ljava/util/List;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->getChangedFolders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getModelArrays(Ljava/util/List;)[Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 57
    return-void
.end method
