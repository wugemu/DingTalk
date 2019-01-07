.class public final Lcom/alibaba/android/user/crm/model/CrmContactObjectList;
.super Ljava/lang/Object;
.source "CrmContactObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasMore:Z

.field public modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;",
            ">;"
        }
    .end annotation
.end field

.field public nextCursor:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIdlModel(Lfmf;)Lcom/alibaba/android/user/crm/model/CrmContactObjectList;
    .locals 6
    .param p1, "modelList"    # Lfmf;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 22
    new-instance v2, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;

    invoke-direct {v2}, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;-><init>()V

    .line 23
    .local v2, "objectlList":Lcom/alibaba/android/user/crm/model/CrmContactObjectList;
    if-eqz p1, :cond_1

    .line 24
    iget-object v3, p1, Lfmf;->c:Ljava/lang/Boolean;

    .line 1022
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 24
    iput-boolean v3, v2, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;->hasMore:Z

    .line 25
    iget-object v3, p1, Lfmf;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 25
    iput-wide v4, v2, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;->nextCursor:J

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;>;"
    iget-object v3, p1, Lfmf;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 28
    iget-object v3, p1, Lfmf;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcde;

    .line 29
    .local v1, "model":Lcde;
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->fromIDLModel(Lcde;)Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v1    # "model":Lcde;
    :cond_0
    iput-object v0, v2, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;->modelList:Ljava/util/List;

    .line 34
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;>;"
    :cond_1
    return-object v2
.end method
