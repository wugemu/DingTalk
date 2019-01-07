.class public Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;
.super Ljava/lang/Object;
.source "OrgManagerResourceGroupObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x620586d41e31a8a5L


# instance fields
.field public appResources:Ljava/util/List;
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

.field public superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sysResources:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lfpk;)Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;
    .locals 5
    .param p0, "model"    # Lfpk;

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 33
    const/4 v0, 0x0

    .line 61
    :cond_0
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;
    iget-object v2, p0, Lfpk;->a:Lfpl;

    if-eqz v2, :cond_2

    .line 37
    iget-object v2, p0, Lfpk;->a:Lfpl;

    invoke-static {v2}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->fromIDLModel(Lfpl;)Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 40
    :cond_2
    iget-object v2, p0, Lfpk;->b:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lfpk;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfpk;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    .line 42
    iget-object v2, p0, Lfpk;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpl;

    .line 43
    .local v1, "resource":Lfpl;
    if-eqz v1, :cond_3

    .line 46
    iget-object v3, v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->fromIDLModel(Lfpl;)Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v1    # "resource":Lfpl;
    :cond_4
    iget-object v2, p0, Lfpk;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfpk;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfpk;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    .line 53
    iget-object v2, p0, Lfpk;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpl;

    .line 54
    .restart local v1    # "resource":Lfpl;
    if-eqz v1, :cond_5

    .line 57
    iget-object v3, v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->fromIDLModel(Lfpl;)Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public toIDLModel()Lfpk;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    new-instance v0, Lfpk;

    invoke-direct {v0}, Lfpk;-><init>()V

    .line 67
    .local v0, "model":Lfpk;
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->toIDLModel()Lfpl;

    move-result-object v2

    iput-object v2, v0, Lfpk;->a:Lfpl;

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lfpk;->b:Ljava/util/List;

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 76
    .local v1, "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v1, :cond_1

    .line 79
    iget-object v3, v0, Lfpk;->b:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->toIDLModel()Lfpl;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lfpk;->c:Ljava/util/List;

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 88
    .restart local v1    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    if-eqz v1, :cond_3

    .line 91
    iget-object v3, v0, Lfpk;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->toIDLModel()Lfpl;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v1    # "object":Lcom/alibaba/android/user/model/OrgManagerResourceObject;
    :cond_4
    return-object v0
.end method
