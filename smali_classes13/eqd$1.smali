.class final Leqd$1;
.super Ljava/lang/Object;
.source "ChatMsgSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqd;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Leqd;


# direct methods
.method constructor <init>(Leqd;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$0"    # Leqd;

    .prologue
    .line 136
    iput-object p1, p0, Leqd$1;->b:Leqd;

    iput-object p2, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 139
    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-static {v6}, Leqd;->a(Leqd;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    const-string/jumbo v6, "search_click_type"

    const-string/jumbo v7, "type=%s"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "chatmsg"

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.add.search.history"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-static {v6}, Leqd;->b(Leqd;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 148
    .local v1, "broadcastManager":Ldq;
    invoke-virtual {v1, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 149
    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "count"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "count":Ljava/lang/String;
    invoke-static {v3}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.HOMETAB_CLICKED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "broadCast":Landroid/content/Intent;
    const-string/jumbo v6, "tabID"

    sget v7, Lemt$e;->tab_conversation:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {v1, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 155
    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 156
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "anchor_id"

    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "mid"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    const-string/jumbo v6, "im_navigator_from"

    const-string/jumbo v7, "search_result"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-virtual {v6}, Leqd;->a()Landroid/app/Activity;

    move-result-object v8

    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "cid"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6, v2, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 176
    .end local v0    # "broadCast":Landroid/content/Intent;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 142
    .end local v1    # "broadcastManager":Ldq;
    .end local v3    # "count":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v6, "search_click_type"

    const-string/jumbo v7, "type=%s,kw=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "chatmsg"

    aput-object v9, v8, v10

    iget-object v9, p0, Leqd$1;->b:Leqd;

    invoke-static {v9}, Leqd;->a(Leqd;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 164
    .restart local v1    # "broadcastManager":Ldq;
    .restart local v3    # "count":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Leqd$1;->b:Leqd;

    .line 165
    invoke-virtual {v6}, Leqd;->a()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Leqd$1;->b:Leqd;

    iget-object v8, v8, Leqd;->e:Landroid/os/Bundle;

    invoke-static {v6, v7, v8}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .line 166
    .local v4, "detailFragment":Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 167
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "keyword"

    iget-object v7, p0, Leqd$1;->b:Leqd;

    invoke-static {v7}, Leqd;->a(Leqd;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v7, "intent_key_search_table"

    iget-object v6, p0, Leqd$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v8, "tableName"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v7, "intent_key_search_field"

    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-static {v6}, Leqd;->c(Leqd;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_4

    const-string/jumbo v6, "senderId"

    :goto_2
    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v6, "intent_key_search_count"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4, v2}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 172
    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-static {v6}, Leqd;->c(Leqd;)J

    move-result-wide v6

    .line 1220
    iput-wide v6, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    .line 2208
    iput-boolean v12, v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->s:Z

    .line 174
    iget-object v6, p0, Leqd$1;->b:Leqd;

    invoke-static {v6}, Leqd;->d(Leqd;)Lenx;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lenx;)V

    goto/16 :goto_1

    .line 169
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method
