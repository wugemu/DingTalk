.class public Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
.super Ljava/lang/Object;
.source "CrmContactObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837d7L


# instance fields
.field public avatarMediaId:Ljava/lang/String;

.field public contactExtPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;",
            ">;"
        }
    .end annotation
.end field

.field public contactId:Ljava/lang/String;

.field public customerId:Ljava/lang/String;

.field public customerName:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public stateCode:Ljava/lang/String;

.field public uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromIDLModel(Lcde;)Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    .locals 5
    .param p1, "model"    # Lcde;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;-><init>()V

    .line 58
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    if-eqz p1, :cond_2

    .line 59
    iget-object v3, p1, Lcde;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->avatarMediaId:Ljava/lang/String;

    .line 60
    iget-object v3, p1, Lcde;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->customerName:Ljava/lang/String;

    .line 61
    iget-object v3, p1, Lcde;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->contactId:Ljava/lang/String;

    .line 62
    iget-object v3, p1, Lcde;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    .line 63
    iget-object v3, p1, Lcde;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->mobile:Ljava/lang/String;

    .line 64
    iget-object v3, p1, Lcde;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->stateCode:Ljava/lang/String;

    .line 65
    iget-object v3, p1, Lcde;->b:Ljava/lang/Long;

    invoke-static {v3}, Lcoc;->b(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->uid:Ljava/lang/Long;

    .line 66
    iget-object v3, p1, Lcde;->h:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "orgExtPropertyModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;>;"
    iget-object v3, p1, Lcde;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcey;

    .line 69
    .local v1, "orgExtPropertyModel":Lcey;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->fromIDLModel(Lcey;)Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v1    # "orgExtPropertyModel":Lcey;
    :cond_0
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->contactExtPropertyList:Ljava/util/List;

    .line 73
    .end local v2    # "orgExtPropertyModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;>;"
    :cond_1
    iget-object v3, p1, Lcde;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->customerId:Ljava/lang/String;

    .line 74
    iget-object v3, p1, Lcde;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->data:Ljava/lang/String;

    .line 76
    :cond_2
    return-object v0
.end method
