.class public Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;
.super Ljava/lang/Object;
.source "DepartmentGroup.java"


# instance fields
.field private departments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/Department;",
            ">;"
        }
    .end annotation
.end field

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getDepartments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/Department;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->departments:Ljava/util/List;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->members:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Lcom/alibaba/alimei/restfulapi/data/contact/Department;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->total:I

    return v0
.end method

.method public setDepartments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/Department;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/Department;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->departments:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentMember;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->members:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setParent(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)V
    .locals 0
    .param p1, "parent"    # Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .line 46
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->total:I

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DepartmentGroup [total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", departments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->departments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/DepartmentGroup;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
