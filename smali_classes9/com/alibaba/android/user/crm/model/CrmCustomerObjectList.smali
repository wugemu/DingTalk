.class public final Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;
.super Ljava/lang/Object;
.source "CrmCustomerObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public extObject:Lfmj;

.field public hasMore:Z

.field public modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
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

.method public static fromIdlModel(Lfmh;)Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;
    .locals 7
    .param p0, "modelList"    # Lfmh;

    .prologue
    const/4 v6, 0x0

    .line 25
    new-instance v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;

    invoke-direct {v2}, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;-><init>()V

    .line 26
    .local v2, "objectList":Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;
    if-eqz p0, :cond_2

    .line 27
    iget-object v3, p0, Lfmh;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 27
    iput-wide v4, v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->nextCursor:J

    .line 28
    iget-object v3, p0, Lfmh;->c:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 28
    iput-boolean v3, v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->hasMore:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    iget-object v3, p0, Lfmh;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lfmh;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdf;

    .line 32
    .local v1, "model":Lcdf;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->fromIdlModel(Lcdf;)Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v1    # "model":Lcdf;
    :cond_0
    iput-object v0, v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    .line 36
    iget-object v3, p0, Lfmh;->d:Lfmi;

    .line 2035
    new-instance v4, Lfmj;

    invoke-direct {v4}, Lfmj;-><init>()V

    .line 2036
    if-eqz v3, :cond_1

    .line 2037
    iget-object v5, v3, Lfmi;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 2037
    iput-boolean v5, v4, Lfmj;->a:Z

    .line 2038
    iget-object v5, v3, Lfmi;->b:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 2038
    iput-boolean v5, v4, Lfmj;->c:Z

    .line 2039
    iget-object v3, v3, Lfmi;->c:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 2039
    iput-boolean v3, v4, Lfmj;->b:Z

    .line 36
    :cond_1
    iput-object v4, v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->extObject:Lfmj;

    .line 37
    iget-object v3, p0, Lfmh;->e:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 37
    iput v3, v2, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->count:I

    .line 39
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    :cond_2
    return-object v2
.end method
