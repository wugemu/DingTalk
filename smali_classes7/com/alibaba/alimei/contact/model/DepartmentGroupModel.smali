.class public Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "DepartmentGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private departments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->pageSize:I

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->pageSize:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->total:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    .line 124
    const-class v0, Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/model/DepartmentModel;

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/model/DepartmentGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/model/DepartmentGroupModel$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getDepartmentSize()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDepartments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    return-object v0
.end method

.method public getMemberSize()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->pageSize:I

    return v0
.end method

.method public getParent()Lcom/alibaba/alimei/contact/model/DepartmentModel;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->total:I

    return v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    return v0
.end method

.method public setDepartments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/DepartmentModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/DepartmentMemberModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setMore(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    .line 102
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->pageSize:I

    .line 90
    return-void
.end method

.method public setParent(Lcom/alibaba/alimei/contact/model/DepartmentModel;)V
    .locals 0
    .param p1, "parent"    # Lcom/alibaba/alimei/contact/model/DepartmentModel;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    .line 43
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->total:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DepartmentGroupModel [hasMore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", departments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    iget v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->hasMore:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->parent:Lcom/alibaba/alimei/contact/model/DepartmentModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->departments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/DepartmentGroupModel;->members:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 118
    return-void
.end method
