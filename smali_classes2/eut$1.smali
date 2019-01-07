.class final Leut$1;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leut;


# direct methods
.method constructor <init>(Leut;)V
    .locals 0
    .param p1, "this$0"    # Leut;

    .prologue
    .line 98
    iput-object p1, p0, Leut$1;->a:Leut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v4, "phoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Leut$1;->a:Leut;

    iget-object v7, v7, Leut;->a:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 103
    iget-object v7, p0, Leut$1;->a:Leut;

    iget-object v7, v7, Leut;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 104
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_0

    .line 105
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 106
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Leut$1;->a:Leut;

    invoke-static {v8}, Leut;->a(Leut;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 113
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 114
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 115
    .local v2, "localContactObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 116
    .local v5, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    .line 117
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "num":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 119
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 120
    .local v1, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v1, :cond_2

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 121
    iget-object v8, p0, Leut$1;->a:Leut;

    invoke-static {v8}, Leut;->a(Leut;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 127
    .end local v1    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v3    # "num":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Leut$1;->a:Leut;

    invoke-static {v7}, Leut;->a(Leut;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 128
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Leut$1$1;

    invoke-direct {v8, p0}, Leut$1$1;-><init>(Leut$1;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 136
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v2    # "localContactObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v5    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method
