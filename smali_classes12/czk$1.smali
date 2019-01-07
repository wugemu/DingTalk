.class final Lczk$1;
.super Ljava/lang/Object;
.source "UserPictureViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lczk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/alibaba/wukong/im/Message;

.field final synthetic m:Lczk;


# direct methods
.method constructor <init>(Lczk;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lczk;

    .prologue
    .line 233
    iput-object p1, p0, Lczk$1;->m:Lczk;

    iput-object p2, p0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-boolean p3, p0, Lczk$1;->b:Z

    iput-object p4, p0, Lczk$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lczk$1;->d:Landroid/app/Activity;

    iput-object p6, p0, Lczk$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lczk$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lczk$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lczk$1;->h:Ljava/lang/String;

    iput-object p10, p0, Lczk$1;->i:Ljava/lang/String;

    iput p11, p0, Lczk$1;->j:I

    iput p12, p0, Lczk$1;->k:I

    iput-object p13, p0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 35
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "e_id"

    .line 237
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lczk$1;->b:Z

    if-eqz v5, :cond_3

    .line 239
    :cond_1
    const-wide/16 v8, 0x0

    .line 241
    .local v8, "emotionId":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "p_id"

    .line 242
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    .local v7, "emotionPackageId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "p_t_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1109
    .local v34, "topicIdStr":Ljava/lang/String;
    const-wide/16 v12, 0x0

    move-object/from16 v0, v34

    invoke-static {v0, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 246
    .local v16, "topicId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "e_id"

    .line 247
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 253
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "p_type"

    .line 254
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->c:Ljava/lang/String;

    invoke-static {v5}, Ldkj;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 258
    const/4 v10, 0x2

    .line 262
    .local v10, "emotionType":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "3rd_emotion_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 263
    .local v18, "thirdPartyEmotionId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "pr_uuid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 264
    .local v22, "praiseUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "pr_type"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1150
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v23

    .line 265
    .local v23, "praiseType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v6, "pr_url"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 266
    .local v24, "urlPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->m:Lczk;

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk$1;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lczk$1;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lczk$1;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lczk$1;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lczk$1;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lczk$1;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lczk$1;->i:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lczk$1;->j:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lczk$1;->k:I

    move/from16 v21, v0

    invoke-static/range {v5 .. v24}, Lczk;->a(Lczk;Landroid/app/Activity;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 309
    .end local v7    # "emotionPackageId":Ljava/lang/String;
    .end local v8    # "emotionId":J
    .end local v10    # "emotionType":I
    .end local v16    # "topicId":J
    .end local v18    # "thirdPartyEmotionId":Ljava/lang/String;
    .end local v22    # "praiseUuid":Ljava/lang/String;
    .end local v23    # "praiseType":I
    .end local v24    # "urlPrefix":Ljava/lang/String;
    .end local v34    # "topicIdStr":Ljava/lang/String;
    :goto_3
    return-void

    .line 260
    .restart local v7    # "emotionPackageId":Ljava/lang/String;
    .restart local v8    # "emotionId":J
    .restart local v16    # "topicId":J
    .restart local v34    # "topicIdStr":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "emotionType":I
    goto :goto_2

    .line 271
    .end local v7    # "emotionPackageId":Ljava/lang/String;
    .end local v8    # "emotionId":J
    .end local v10    # "emotionType":I
    .end local v16    # "topicId":J
    .end local v34    # "topicIdStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-static {v5}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v32

    .line 273
    .local v32, "orgId":J
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_image_view_big"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 275
    new-instance v30, Landroid/os/Bundle;

    invoke-direct/range {v30 .. v30}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v30, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "org_id"

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 277
    const-string/jumbo v5, "burnChat"

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    .line 278
    invoke-static {v6}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v6

    .line 277
    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string/jumbo v6, "intent_key_menu_seed"

    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->d:Landroid/app/Activity;

    check-cast v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 280
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y()J

    move-result-wide v12

    .line 279
    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "intent_key_find_in_chat"

    const/4 v11, 0x1

    invoke-static {v5, v6, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    .line 284
    .local v4, "enableFindInChat":Z
    const-string/jumbo v5, "intent_key_find_in_chat"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    if-nez v4, :cond_4

    .line 286
    const-string/jumbo v5, "is_disable_view_all"

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    :cond_4
    const-string/jumbo v5, "intent_key_enable_swipe_to_dismiss"

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->m:Lczk;

    iget-object v5, v5, Lczk;->L:Landroid/view/View;

    sget v6, Lctk$f;->chatting_content_image:I

    invoke-static {v5, v6}, Ldof;->a(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object v31

    .line 292
    .local v31, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    const-string/jumbo v5, "intent_key_swipe_objects"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    const-string/jumbo v5, "from"

    const-string/jumbo v6, "from_im_chat"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 296
    new-instance v27, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v6}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 297
    .local v27, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lczk$1;->d:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->m:Lczk;

    iget-object v0, v5, Lczk;->X:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    .line 298
    invoke-virtual/range {v25 .. v30}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    goto/16 :goto_3

    .line 300
    .end local v27    # "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
    :cond_5
    new-instance v27, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;

    invoke-direct/range {v27 .. v27}, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;-><init>()V

    .line 301
    .local v27, "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, v27

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    move-object/from16 v0, v27

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-static {v5}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v28

    .line 304
    .local v28, "current":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lczk$1;->l:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ldrp;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Conversation;)V

    .line 305
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lczk$1;->d:Landroid/app/Activity;

    move-object/from16 v26, v0

    const/16 v29, 0x1

    .line 306
    invoke-virtual/range {v25 .. v30}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto/16 :goto_3

    .end local v4    # "enableFindInChat":Z
    .end local v27    # "fetcher":Lcom/alibaba/android/dingtalkim/impls/MessagePhotoObjectsFetcher;
    .end local v28    # "current":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v30    # "bundle":Landroid/os/Bundle;
    .end local v31    # "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    .end local v32    # "orgId":J
    .restart local v7    # "emotionPackageId":Ljava/lang/String;
    .restart local v8    # "emotionId":J
    .restart local v16    # "topicId":J
    .restart local v34    # "topicIdStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
