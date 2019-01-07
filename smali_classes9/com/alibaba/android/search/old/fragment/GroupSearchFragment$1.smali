.class final Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    if-eqz p2, :cond_0

    const-string/jumbo v3, "com.alibaba.android.rimet.search.groupid.join"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string/jumbo v3, "keyword"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "keyword":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "conversation"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const-string/jumbo v3, "conversation"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 64
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    iput-object v0, v3, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    .line 65
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    iput-object v2, v3, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->t:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    new-instance v3, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;-><init>(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;

    iget-object v4, v4, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->h:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 71
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    .end local v2    # "keyword":Ljava/lang/String;
    :cond_0
    return-void
.end method
