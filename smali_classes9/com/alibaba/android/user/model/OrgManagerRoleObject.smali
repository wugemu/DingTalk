.class public Lcom/alibaba/android/user/model/OrgManagerRoleObject;
.super Ljava/lang/Object;
.source "OrgManagerRoleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c14ba806c65d8efL


# instance fields
.field public grantResources:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgManagerResourceObject;",
            ">;"
        }
    .end annotation
.end field

.field public members:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;",
            ">;"
        }
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roleId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;
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

.method public static fromIDLModel(Lfpm;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    .locals 8
    .param p0, "model"    # Lfpm;

    .prologue
    const-wide/16 v6, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 42
    const/4 v1, 0x0

    .line 74
    :cond_0
    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;-><init>()V

    .line 45
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    iget-object v3, p0, Lfpm;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 45
    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->roleId:J

    .line 46
    iget-object v3, p0, Lfpm;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 46
    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->orgId:J

    .line 49
    iget-object v3, p0, Lfpm;->c:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lfpm;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lfpm;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    .line 51
    iget-object v3, p0, Lfpm;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpg;

    .line 52
    .local v0, "employee":Lfpg;
    if-eqz v0, :cond_2

    .line 55
    iget-object v4, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->fromIDLModel(Lfpg;)Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "employee":Lfpg;
    :cond_3
    iget-object v3, p0, Lfpm;->d:Lfpo;

    if-eqz v3, :cond_4

    .line 60
    iget-object v3, p0, Lfpm;->d:Lfpo;

    invoke-static {v3}, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->fromIDLModel(Lfpo;)Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    .line 64
    :cond_4
    iget-object v3, p0, Lfpm;->e:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfpm;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lfpm;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    .line 66
    iget-object v3, p0, Lfpm;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpl;

    .line 67
    .local v2, "orgRes":Lfpl;
    if-eqz v2, :cond_5

    .line 70
    iget-object v4, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->fromIDLModel(Lfpl;)Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public toIDLModel()Lfpm;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 79
    new-instance v2, Lfpm;

    invoke-direct {v2}, Lfpm;-><init>()V

    .line 80
    .local v2, "model":Lfpm;
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->roleId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lfpm;->a:Ljava/lang/Long;

    .line 81
    iget-wide v4, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lfpm;->b:Ljava/lang/Long;

    .line 82
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lfpm;->c:Ljava/util/List;

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    .line 85
    .local v1, "member":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    if-eqz v1, :cond_0

    .line 88
    iget-object v4, v2, Lfpm;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->toIDLModel()Lfpg;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1    # "member":Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    invoke-virtual {v3}, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->toIDLModel()Lfpo;

    move-result-object v3

    iput-object v3, v2, Lfpm;->d:Lfpo;

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lfpm;->e:Ljava/util/List;

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 99
    .local v0, "grant":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v0, :cond_3

    .line 102
    iget-object v4, v2, Lfpm;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->toIDLModel()Lfpl;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v0    # "grant":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_4
    return-object v2
.end method
