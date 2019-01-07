.class public Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "DentryGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETE:I = 0x5

.field public static final DIRTY:I = 0x3

.field public static final OTHER:I = 0x4

.field public static final PUSH:I = 0x2

.field public static final SYNC:I = 0x1


# instance fields
.field private addDentrys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private changeReason:I

.field private deleteDentrys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private updateDentrys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 62
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->changeReason:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->addDentrys:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->updateDentrys:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->deleteDentrys:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->changeReason:I

    .line 126
    const-class v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 127
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->addDentrys:Ljava/util/Map;

    .line 128
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->updateDentrys:Ljava/util/Map;

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->deleteDentrys:Ljava/util/Map;

    .line 130
    return-void
.end method

.method private readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;
    .locals 6
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .local v5, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "modelSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v3, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p2, v3, p1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 140
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "modelSize":I
    .end local v3    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    .line 110
    .local v3, "size":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    if-lez v3, :cond_0

    .line 112
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 116
    .local v2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 121
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddDentrys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->addDentrys:Ljava/util/Map;

    return-object v0
.end method

.method public getChangeReason()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->changeReason:I

    return v0
.end method

.method public getDeleteDentrys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->deleteDentrys:Ljava/util/Map;

    return-object v0
.end method

.method public getUpdateDentrys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->updateDentrys:Ljava/util/Map;

    return-object v0
.end method

.method public setAddDentrys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "addDentrys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->addDentrys:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public setChangeReason(I)V
    .locals 0
    .param p1, "changeReason"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->changeReason:I

    .line 74
    return-void
.end method

.method public setDeleteDentrys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "deleteDentrys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->deleteDentrys:Ljava/util/Map;

    .line 98
    return-void
.end method

.method public setUpdateDentrys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "updateDentrys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->updateDentrys:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->addDentrys:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->updateDentrys:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->deleteDentrys:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 106
    return-void
.end method
