.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
.super Ljava/lang/Object;
.source "OrgDeptNodeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a20d9e9ffc23e03L


# instance fields
.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public members:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public subDepts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lceo;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    .locals 8
    .param p0, "model"    # Lceo;

    .prologue
    .line 49
    if-nez p0, :cond_1

    .line 50
    const/4 v2, 0x0

    .line 80
    :cond_0
    return-object v2

    .line 53
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 54
    .local v2, "orgDeptNodeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    iget-object v5, p0, Lceo;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 54
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 55
    iget-object v5, p0, Lceo;->b:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lceo;->c:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    .line 59
    iget-object v5, p0, Lceo;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lceo;

    .line 60
    .local v3, "subDeptModel":Lceo;
    if-eqz v3, :cond_2

    .line 63
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->fromIDLModel(Lceo;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    move-result-object v4

    .line 64
    .local v4, "subDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v3    # "subDeptModel":Lceo;
    .end local v4    # "subDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    :cond_3
    iget-object v5, p0, Lceo;->d:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 71
    iget-object v5, p0, Lceo;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfb;

    .line 72
    .local v0, "memberModel":Lcfb;
    if-eqz v0, :cond_4

    .line 75
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModel(Lcfb;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v1

    .line 76
    .local v1, "memberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static fromIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lceo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lceo;>;"
    if-nez p0, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 98
    :cond_0
    return-object v2

    .line 89
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "orgDeptNodeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceo;

    .line 91
    .local v0, "model":Lceo;
    if-eqz v0, :cond_2

    .line 94
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->fromIDLModel(Lceo;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    move-result-object v1

    .line 95
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lceo;
    .locals 8
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .prologue
    .line 103
    if-nez p0, :cond_1

    .line 104
    const/4 v2, 0x0

    .line 134
    :cond_0
    return-object v2

    .line 107
    :cond_1
    new-instance v2, Lceo;

    invoke-direct {v2}, Lceo;-><init>()V

    .line 108
    .local v2, "orgDeptNodeModel":Lceo;
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lceo;->a:Ljava/lang/Long;

    .line 109
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    iput-object v5, v2, Lceo;->b:Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lceo;->c:Ljava/util/List;

    .line 113
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->subDepts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .line 114
    .local v4, "subDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    if-eqz v4, :cond_2

    .line 117
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lceo;

    move-result-object v3

    .line 118
    .local v3, "subDeptModel":Lceo;
    iget-object v6, v2, Lceo;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v3    # "subDeptModel":Lceo;
    .end local v4    # "subDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lceo;->d:Ljava/util/List;

    .line 125
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 126
    .local v1, "memberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v1, :cond_4

    .line 129
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcfb;

    move-result-object v0

    .line 130
    .local v0, "memberModel":Lcfb;
    iget-object v6, v2, Lceo;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static toIDLModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lceo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;>;"
    if-nez p0, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 153
    :cond_0
    return-object v0

    .line 143
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "nodeModels":Ljava/util/List;, "Ljava/util/List<Lceo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    .line 146
    .local v2, "orgDeptNodeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;
    if-eqz v2, :cond_2

    .line 149
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;)Lceo;

    move-result-object v1

    .line 150
    .local v1, "orgDeptNodeModel":Lceo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
