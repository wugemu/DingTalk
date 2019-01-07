.class public final Ldgn;
.super Ldgl;
.source "ChatDetailImageViewHolder.java"


# instance fields
.field private m:Landroid/widget/ImageView;

.field private n:Lcom/alibaba/doraemon/image/ImageMagician;

.field private o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 62
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldgn;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 63
    return-void
.end method

.method static synthetic a(Ldgn;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p0, "x0"    # Ldgn;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    .line 7204
    const-wide/16 v5, 0x0

    .line 7205
    const/4 v7, 0x0

    .line 7206
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "p_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7208
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "e_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 7212
    :goto_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "p_type"

    .line 7213
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7212
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 7214
    invoke-static/range {p2 .. p2}, Ldkj;->a(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 7215
    const/4 v7, 0x2

    .line 7221
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "p_t_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8109
    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 7223
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "3rd_emotion_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 7224
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "p_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 7225
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "3rd_emotion_width"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v14

    .line 7226
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "3rd_emotion_height"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v15

    .line 7227
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "pr_uuid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 7228
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "pr_type"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v17

    .line 7229
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "pr_url"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 7231
    move-object/from16 v0, p0

    iget-object v3, v0, Ldgn;->d:Landroid/app/Activity;

    .line 11150
    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 10257
    int-to-long v8, v2

    const-wide/16 v20, -0xa

    cmp-long v2, v8, v20

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    .line 10258
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10259
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ldkj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10260
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 10261
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10262
    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10263
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 10264
    :goto_2
    return-void

    .line 7217
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 10267
    :cond_1
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v19

    const-string/jumbo v20, "https://qr.dingtalk.com/im/emotion_preview"

    new-instance v2, Ldgn$2;

    move-object/from16 v3, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v18}, Ldgn$2;-><init>(Ldgn;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    .line 10268
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic a(Ldgn;Lcom/alibaba/wukong/im/Message;)V
    .locals 8
    .param p0, "x0"    # Ldgn;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v4, 0x1

    .line 53
    .line 11237
    if-eqz p1, :cond_1

    .line 11238
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 11239
    const-string/jumbo v0, "forward_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11240
    const-string/jumbo v0, "save_space_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11241
    const-string/jumbo v0, "save_to_phone_enter_hide"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11243
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11244
    iget-object v0, p0, Ldgn;->f:Landroid/view/View;

    sget v1, Lctk$f;->img_content:I

    invoke-static {v0, v1}, Ldof;->a(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 11245
    const-string/jumbo v1, "intent_key_swipe_objects"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11247
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Ldgn;->d:Landroid/app/Activity;

    .line 11290
    iget-object v2, p0, Ldgn;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    if-nez v2, :cond_0

    .line 11291
    invoke-virtual {p0}, Ldgn;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 11292
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 11293
    :goto_0
    new-instance v6, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    invoke-virtual {p0}, Ldgn;->b()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7, v3, v2}, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;-><init>(Ljava/util/List;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v6, p0, Ldgn;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    .line 11296
    :cond_0
    iget-object v2, p0, Ldgn;->o:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    move-object v3, p1

    .line 11247
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V

    .line 53
    :cond_1
    return-void

    .line 11292
    :cond_2
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 20
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->c:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->c:Landroid/view/View;

    sget v3, Lctk$f;->img_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Ldgn;->m:Landroid/widget/ImageView;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->m:Landroid/widget/ImageView;

    sget v3, Lctk$c;->bg_gray:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_c

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    .line 78
    .local v10, "content":Lcom/alibaba/wukong/im/MessageContent;
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v10, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    if-eqz v2, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    check-cast v10, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;

    .end local v10    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-virtual {v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->url()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 83
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v14, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 89
    .local v14, "entity":Lcom/alibaba/wukong/im/Message;
    invoke-static {v14}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v11

    .line 1078
    .local v11, "displayPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v8, Lhcg$a;

    invoke-direct {v8}, Lhcg$a;-><init>()V

    .line 91
    .local v8, "imageProperty":Lhcg$a;
    const/4 v2, 0x1

    .line 1109
    iput-boolean v2, v8, Lhcg$a;->c:Z

    .line 92
    const/4 v2, 0x0

    .line 1119
    iput v2, v8, Lhcg$a;->f:I

    .line 93
    const/4 v2, 0x1

    .line 1124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    .line 96
    const/16 v17, 0x0

    .line 97
    .local v17, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v2, :cond_3

    .line 98
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v17

    .end local v17    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    check-cast v17, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 100
    .restart local v17    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ldgn;->a(Lhcg$a;)V

    .line 101
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "authUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 105
    .local v18, "key":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 113
    :cond_4
    :goto_1
    invoke-static/range {v18 .. v18}, Lcqz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 123
    move-object v5, v9

    .line 130
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Ldkj;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 131
    const/4 v2, 0x0

    .line 2124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    .line 132
    const/4 v2, 0x2

    .line 3119
    iput v2, v8, Lhcg$a;->f:I

    .line 133
    const/4 v2, 0x1

    .line 4109
    iput-boolean v2, v8, Lhcg$a;->c:Z

    .line 134
    invoke-static {}, Lebb;->a()I

    move-result v2

    .line 4139
    iput v2, v8, Lhcg$a;->i:I

    .line 135
    invoke-static {}, Lebb;->b()I

    move-result v2

    .line 4144
    iput v2, v8, Lhcg$a;->j:I

    .line 139
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->m:Landroid/widget/ImageView;

    const v3, 0x20160307

    invoke-static {}, Lebb;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 153
    :cond_7
    :goto_4
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v2, v3, :cond_8

    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "1"

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "is_3rd_emotion"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    :try_start_2
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_width"

    .line 157
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 158
    .local v19, "width":I
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_height"

    .line 159
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 160
    .local v16, "height":I
    if-lez v19, :cond_8

    if-lez v16, :cond_8

    .line 6099
    move/from16 v0, v19

    iput v0, v8, Lhcg$a;->a:I

    .line 7099
    move/from16 v0, v16

    iput v0, v8, Lhcg$a;->a:I

    .line 163
    const/4 v2, 0x0

    .line 7104
    iput-boolean v2, v8, Lhcg$a;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v16    # "height":I
    .end local v19    # "width":I
    :cond_8
    :goto_5
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldgn;->m:Landroid/widget/ImageView;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ldgn;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v7, p1

    check-cast v7, Landroid/widget/AbsListView;

    invoke-static/range {v2 .. v8}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 177
    :goto_6
    move-object v15, v5

    .line 178
    .local v15, "finalUrl":Ljava/lang/String;
    move-object/from16 v13, v18

    .line 179
    .local v13, "emotionMediaId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->m:Landroid/widget/ImageView;

    new-instance v3, Ldgn$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v3, v0, v15, v13, v1}, Ldgn$1;-><init>(Ldgn;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 108
    .end local v5    # "url":Ljava/lang/String;
    .end local v13    # "emotionMediaId":Ljava/lang/String;
    .end local v15    # "finalUrl":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 109
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 125
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    goto/16 :goto_2

    .line 140
    :catch_1
    move-exception v12

    .line 141
    .local v12, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v12}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 147
    .end local v12    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_a
    iget-object v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    iget-object v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "e_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 148
    const/4 v2, 0x0

    .line 5124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    goto/16 :goto_4

    .line 165
    :catch_2
    move-exception v12

    .line 166
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 174
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldgn;->m:Landroid/widget/ImageView;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ldgn;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v7, p1

    check-cast v7, Landroid/widget/AbsListView;

    invoke-static/range {v2 .. v8}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto :goto_6

    .line 198
    .end local v5    # "url":Ljava/lang/String;
    .end local v8    # "imageProperty":Lhcg$a;
    .end local v9    # "authUrl":Ljava/lang/String;
    .end local v11    # "displayPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v14    # "entity":Lcom/alibaba/wukong/im/Message;
    .end local v17    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v18    # "key":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Ldgn;->m:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lctk$g;->view_chat_detail_item_image:I

    return v0
.end method
