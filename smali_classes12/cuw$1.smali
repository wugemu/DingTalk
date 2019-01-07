.class final Lcuw$1;
.super Ljava/lang/Object;
.source "EncryptImageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcuw;


# direct methods
.method constructor <init>(Lcuw;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcuw;

    .prologue
    .line 186
    iput-object p1, p0, Lcuw$1;->c:Lcuw;

    iput-object p2, p0, Lcuw$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcuw$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 189
    iget-object v0, p0, Lcuw$1;->c:Lcuw;

    invoke-static {v0}, Lcuw;->a(Lcuw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcuw$1;->c:Lcuw;

    iget-object v0, v0, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcuw$1;->c:Lcuw;

    iget-object v1, p0, Lcuw$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcuw$1;->c:Lcuw;

    iget-object v3, v3, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v1, v3}, Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcuw$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 196
    .local v8, "orgId":J
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_image_view_big"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 197
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "org_id"

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    const-string/jumbo v0, "burnChat"

    iget-object v1, p0, Lcuw$1;->b:Lcom/alibaba/wukong/im/Message;

    .line 200
    invoke-static {v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 199
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-object v0, p0, Lcuw$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 202
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y()J

    move-result-wide v10

    .line 201
    invoke-virtual {v5, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 204
    iget-object v0, p0, Lcuw$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_find_in_chat"

    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    .line 206
    .local v6, "enableFindInChat":Z
    const-string/jumbo v0, "intent_key_find_in_chat"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    if-nez v6, :cond_2

    .line 208
    const-string/jumbo v0, "is_disable_view_all"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    :cond_2
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-object v0, p0, Lcuw$1;->c:Lcuw;

    iget-object v0, v0, Lcuw;->L:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-static {v0, v1}, Ldof;->a(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 213
    .local v7, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    const-string/jumbo v0, "intent_key_swipe_objects"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    iget-object v0, p0, Lcuw$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcuw$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 216
    .local v2, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcuw$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcuw$1;->c:Lcuw;

    iget-object v3, v3, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
