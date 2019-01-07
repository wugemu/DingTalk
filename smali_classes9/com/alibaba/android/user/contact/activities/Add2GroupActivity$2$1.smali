.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-string/jumbo v3, "group_conversation"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 110
    :goto_0
    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 112
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 114
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :try_start_0
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "tag"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 115
    .local v4, "tag":J
    const-wide/16 v8, 0x7

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 121
    .end local v4    # "tag":J
    :goto_2
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "title"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->a:Ljava/lang/String;

    invoke-static {v3, v7}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v6}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 119
    .restart local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_2

    .line 125
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    new-instance v6, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$2$1;)V

    invoke-virtual {v3, v6}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 141
    return-void
.end method
