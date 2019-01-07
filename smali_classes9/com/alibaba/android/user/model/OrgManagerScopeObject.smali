.class public Lcom/alibaba/android/user/model/OrgManagerScopeObject;
.super Ljava/lang/Object;
.source "OrgManagerScopeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ALL_DEPT:I = 0x1

.field public static final TYPE_CERTAIN_DEPT:I = 0x3

.field public static final TYPE_CURRENT_DEPT:I = 0x2

.field private static final serialVersionUID:J = 0x107025097821096L


# instance fields
.field public depts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgDeptSimpleObject;",
            ">;"
        }
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfpo;)Lcom/alibaba/android/user/model/OrgManagerScopeObject;
    .locals 5
    .param p0, "model"    # Lfpo;

    .prologue
    .line 37
    if-nez p0, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 52
    :cond_0
    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgManagerScopeObject;-><init>()V

    .line 41
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerScopeObject;
    iget-object v2, p0, Lfpo;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 41
    iput v2, v1, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    .line 43
    iget-object v2, p0, Lfpo;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfpo;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfpo;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    .line 45
    iget-object v2, p0, Lfpo;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpc;

    .line 46
    .local v0, "dept":Lfpc;
    if-eqz v0, :cond_2

    .line 49
    iget-object v3, v1, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->fromIDLModel(Lfpc;)Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    .line 78
    .local v0, "that":Lcom/alibaba/android/user/model/OrgManagerScopeObject;
    iget v2, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    iget v3, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    if-ne v2, v3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    iget-object v2, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-static {v1, v2}, Lfxd;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    goto :goto_0
.end method

.method public toIDLModel()Lfpo;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    new-instance v1, Lfpo;

    invoke-direct {v1}, Lfpo;-><init>()V

    .line 58
    .local v1, "model":Lfpo;
    iget v2, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lfpo;->a:Ljava/lang/Integer;

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lfpo;->b:Ljava/util/List;

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    .line 62
    .local v0, "dept":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    if-eqz v0, :cond_0

    .line 65
    iget-object v3, v1, Lfpo;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->toIDLModel()Lfpc;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "dept":Lcom/alibaba/android/user/model/OrgDeptSimpleObject;
    :cond_1
    return-object v1
.end method
