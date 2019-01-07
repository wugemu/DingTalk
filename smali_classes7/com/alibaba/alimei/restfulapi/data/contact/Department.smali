.class public Lcom/alibaba/alimei/restfulapi/data/contact/Department;
.super Ljava/lang/Object;
.source "Department.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/alibaba/alimei/restfulapi/data/contact/Department;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setParent(Lcom/alibaba/alimei/restfulapi/data/contact/Department;)V
    .locals 0
    .param p1, "parent"    # Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Department [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/Department;->parent:Lcom/alibaba/alimei/restfulapi/data/contact/Department;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
