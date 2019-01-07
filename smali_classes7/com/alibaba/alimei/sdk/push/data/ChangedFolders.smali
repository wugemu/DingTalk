.class public Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
.super Lcom/alibaba/alimei/sdk/push/data/PushData;
.source "ChangedFolders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 21
    const-string/jumbo v0, "800"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->setType(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->setType(Ljava/lang/String;)V

    .line 148
    const-class v3, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 149
    .local v2, "pls":[Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 152
    .local v1, "pl":Landroid/os/Parcelable;
    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .end local v1    # "pl":Landroid/os/Parcelable;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    .line 156
    .end local v0    # "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ChangedFolders [folders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .line 162
    .local v0, "fds":[Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 163
    return-void

    .line 161
    .end local v0    # "fds":[Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->folders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    move-object v0, v1

    goto :goto_0
.end method
