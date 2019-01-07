.class public Lcom/alibaba/wukong/im/UserTagListObject;
.super Ljava/lang/Object;
.source "UserTagListObject.java"


# instance fields
.field public openIdExList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcom/alibaba/wukong/idl/im/models/UserTagListModel;)Lcom/alibaba/wukong/im/UserTagListObject;
    .locals 2
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/UserTagListModel;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/UserTagListObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/UserTagListObject;-><init>()V

    .line 23
    .local v0, "object":Lcom/alibaba/wukong/im/UserTagListObject;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/UserTagListModel;->openIdExList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/wukong/im/OpenIdExObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/UserTagListObject;->openIdExList:Ljava/util/List;

    goto :goto_0
.end method

.method public static fromIdlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/UserTagListModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserTagListObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/UserTagListModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 38
    :cond_1
    return-object v2

    .line 31
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/UserTagListObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/UserTagListModel;

    .line 33
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/UserTagListModel;
    invoke-static {v0}, Lcom/alibaba/wukong/im/UserTagListObject;->fromIdl(Lcom/alibaba/wukong/idl/im/models/UserTagListModel;)Lcom/alibaba/wukong/im/UserTagListObject;

    move-result-object v1

    .line 34
    .local v1, "object":Lcom/alibaba/wukong/im/UserTagListObject;
    if-eqz v1, :cond_3

    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
