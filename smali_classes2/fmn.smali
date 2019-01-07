.class public final Lfmn;
.super Ljava/lang/Object;
.source "CustomerChooseControlImpl.java"

# interfaces
.implements Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfhx",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lfhw;


# direct methods
.method public constructor <init>(Lfhw;)V
    .locals 1
    .param p1, "chooseListener"    # Lfhw;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfmn;->a:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfmn;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfmn;->c:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lfmn;->d:Lfhw;

    .line 45
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z
    .locals 4
    .param p1, "crmCustomerObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    iget-object v1, p0, Lfmn;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 127
    iget-object v1, p0, Lfmn;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 128
    .local v0, "crmObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 133
    .end local v0    # "crmObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z
    .locals 2
    .param p1, "crmCustomerObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lfmn;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 107
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Ljava/util/List;

    .line 110
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    :goto_0
    return-object v0

    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    iget-object v1, p0, Lfmn;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 52
    .local v0, "crmObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v0    # "crmObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 4077
    invoke-direct {p0, p1}, Lfmn;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lfmn;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4087
    :cond_0
    :goto_0
    return v0

    .line 4080
    :cond_1
    iget-object v1, p0, Lfmn;->d:Lfhw;

    if-nez v1, :cond_2

    .line 4081
    iget-object v1, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4083
    :cond_2
    iget-object v0, p0, Lfmn;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 4084
    if-eqz v0, :cond_0

    .line 4085
    iget-object v1, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Z)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 3094
    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3095
    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    if-eqz p2, :cond_0

    iget-object v0, p0, Lfmn;->d:Lfhw;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lfmn;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 3099
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3101
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;>;"
    iget-object v0, p0, Lfmn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lfmn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-direct {p0, p1}, Lfmn;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v0

    return v0
.end method

.method public final b()[J
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-direct {p0, p1}, Lfmn;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v0

    return v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 2150
    iget-object v0, p0, Lfmn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2151
    iget-object v0, p0, Lfmn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 2152
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    if-ne v2, v0, :cond_0

    .line 2153
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2157
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method public final synthetic e(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 1162
    invoke-direct {p0, p1}, Lfmn;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lfmn;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return v2

    .line 1165
    :cond_1
    iget-object v0, p0, Lfmn;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfmn;->d:Lfhw;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lfmn;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    goto :goto_0
.end method
