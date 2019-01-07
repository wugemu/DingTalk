.class public abstract Lczk;
.super Lctv;
.source "UserPictureViewHolder.java"


# instance fields
.field protected S:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected Y:Landroid/widget/ImageView;

.field protected Z:Landroid/widget/ImageView;

.field private a:Landroid/view/View;

.field protected final aa:I

.field protected ab:Lpl/droidsonroids/gif/GifImageView;

.field private ac:Landroid/view/View;

.field private ad:Landroid/view/View;

.field protected final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lczk;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lczk;->aa:I

    .line 91
    iput-boolean p1, p0, Lczk;->b:Z

    .line 92
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lczk;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 93
    return-void
.end method

.method static synthetic a(Lczk;Landroid/app/Activity;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 27
    .param p0, "x0"    # Lczk;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # J
    .param p13, "x11"    # Ljava/lang/String;
    .param p14, "x12"    # Ljava/lang/String;
    .param p15, "x13"    # I
    .param p16, "x14"    # I
    .param p17, "x15"    # Ljava/lang/String;
    .param p18, "x16"    # I
    .param p19, "x17"    # Ljava/lang/String;

    .prologue
    .line 77
    .line 19350
    invoke-static {}, Lcms;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20150
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 19351
    int-to-long v4, v4

    const-wide/16 v6, -0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move/from16 v0, p18

    if-ne v0, v4, :cond_2

    .line 19352
    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19353
    move-object/from16 v0, p19

    move-object/from16 v1, p17

    invoke-static {v0, v1}, Ldkj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19354
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19355
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 19356
    move-object/from16 v0, p0

    iget-object v4, v0, Lczk;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lczk;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 19358
    :try_start_0
    const-string/jumbo v4, "cid"

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19359
    const-string/jumbo v4, "expTime"

    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19364
    :cond_0
    :goto_0
    new-instance v9, Lczk$2;

    move-object/from16 v0, p0

    move/from16 v1, p18

    move-object/from16 v2, p17

    invoke-direct {v9, v0, v5, v1, v2}, Lczk$2;-><init>(Lczk;Ljava/lang/String;ILjava/lang/String;)V

    .line 19391
    move-object/from16 v0, p0

    iget-object v4, v0, Lczk;->d:Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 19392
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk;->d:Landroid/app/Activity;

    invoke-interface {v4, v9, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    move-object v9, v4

    .line 19394
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    const-string/jumbo v5, "im_"

    const-string/jumbo v6, "praise_story_info"

    .line 19396
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 19394
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V

    .line 19397
    :goto_1
    return-void

    .line 19360
    :catch_0
    move-exception v4

    .line 19361
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 21150
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 19400
    int-to-long v4, v4

    const-wide/16 v6, -0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 19401
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 19402
    const-string/jumbo v5, "type"

    invoke-static/range {p18 .. p18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19403
    const-string/jumbo v5, "uuid"

    move-object/from16 v0, p17

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19404
    const-string/jumbo v5, "userWebview"

    const-string/jumbo v6, "0"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19405
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_quickenmotion_like_preview"

    invoke-interface {v5, v6, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 19407
    :cond_3
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v25, "https://qr.dingtalk.com/im/emotion_preview"

    new-instance v5, Lczk$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-wide/from16 v16, p11

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    move-object/from16 v22, p17

    move/from16 v23, p18

    move-object/from16 v24, p19

    invoke-direct/range {v5 .. v24}, Lczk$3;-><init>(Lczk;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lczk;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczk;->Y:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lczk;->r:Landroid/view/View;

    sget v1, Lctk$f;->ic_gif:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczk;->Z:Landroid/widget/ImageView;

    .line 99
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lczk;->ab:Lpl/droidsonroids/gif/GifImageView;

    .line 100
    sget v0, Lctk$f;->vs_for_quick_praise:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczk;->a:Landroid/view/View;

    .line 102
    invoke-virtual {p0, p2}, Lczk;->c(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 42
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Z:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-static/range {p2 .. p2}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v11

    .line 115
    .local v11, "displayPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lczk;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 10078
    new-instance v8, Lhcg$a;

    invoke-direct {v8}, Lhcg$a;-><init>()V

    .line 117
    .local v8, "imageProperty":Lhcg$a;
    iget v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    .line 10114
    iput v2, v8, Lhcg$a;->e:I

    .line 118
    const/4 v2, 0x0

    .line 11109
    iput-boolean v2, v8, Lhcg$a;->c:Z

    .line 119
    const/4 v2, 0x0

    .line 11119
    iput v2, v8, Lhcg$a;->f:I

    .line 120
    const/4 v2, 0x1

    .line 11124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    .line 121
    const-string/jumbo v5, ""

    .line 123
    .local v5, "url":Ljava/lang/String;
    const/16 v32, 0x0

    .line 124
    .local v32, "isEmotionGif":Z
    const/16 v23, 0x0

    .line 125
    .local v23, "authCode":Ljava/lang/String;
    const/16 v27, 0x0

    .line 126
    .local v27, "commonMediaId":Ljava/lang/String;
    const/16 v24, 0x0

    .line 127
    .local v24, "authCommonMediaId":Ljava/lang/String;
    const/16 v37, 0x0

    .line 128
    .local v37, "thirdPartyWidth":I
    const/16 v36, 0x0

    .line 129
    .local v36, "thirdPartyHeight":I
    const/16 v30, 0x0

    .line 130
    .local v30, "emotionName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_a

    .line 131
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v31

    check-cast v31, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 132
    .local v31, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    const-string/jumbo v2, "IM"

    .line 133
    invoke-static/range {p2 .. p2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 132
    invoke-static {v8, v2}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 134
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v25

    .line 135
    .local v25, "authUrl":Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 136
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-static/range {v25 .. v25}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 139
    :cond_1
    invoke-static/range {v25 .. v25}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 140
    .local v29, "emotionMediaId":Ljava/lang/String;
    const/16 v34, 0x0

    .line 142
    .local v34, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :try_start_0
    invoke-static/range {v29 .. v29}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v34

    .line 147
    :goto_0
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v23

    .line 149
    if-eqz v34, :cond_2

    invoke-virtual/range {v34 .. v34}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    if-eq v2, v3, :cond_4

    .line 150
    :cond_2
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 11431
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    const/4 v2, 0x1

    .line 150
    :goto_1
    if-nez v2, :cond_12

    const-string/jumbo v2, ".gif"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 151
    :cond_4
    const/4 v2, 0x0

    .line 12124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    .line 152
    iget-wide v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    invoke-static {}, Lebb;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_f

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Z:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_2
    invoke-static {}, Lebb;->a()I

    move-result v2

    .line 13139
    iput v2, v8, Lhcg$a;->i:I

    .line 162
    invoke-static {}, Lebb;->b()I

    move-result v2

    .line 13144
    iput v2, v8, Lhcg$a;->j:I

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    const v3, 0x20160307

    invoke-static {}, Lebb;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 172
    :cond_5
    :goto_3
    invoke-static/range {v31 .. v31}, Ldkc;->b(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;

    move-result-object v30

    .line 174
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v2, v3, :cond_6

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "1"

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "is_3rd_emotion"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    :try_start_1
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_width"

    .line 178
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 179
    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "3rd_emotion_height"

    .line 180
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 181
    if-lez v37, :cond_6

    if-lez v36, :cond_6

    .line 15099
    move/from16 v0, v37

    iput v0, v8, Lhcg$a;->a:I

    .line 16099
    move/from16 v0, v36

    iput v0, v8, Lhcg$a;->a:I

    .line 184
    const/4 v2, 0x0

    .line 16104
    iput-boolean v2, v8, Lhcg$a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_6
    :goto_4
    move-object/from16 v33, v25

    .local v33, "key":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 196
    :try_start_2
    invoke-static/range {v33 .. v33}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v33

    .line 205
    :cond_7
    :goto_5
    invoke-static/range {v33 .. v33}, Lcqz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    move-object/from16 v5, v25

    .line 217
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lczk;->Y:Landroid/widget/ImageView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v7, v0, Lczk;->L:Landroid/view/View;

    check-cast v7, Landroid/widget/AbsListView;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 224
    .end local v25    # "authUrl":Ljava/lang/String;
    .end local v29    # "emotionMediaId":Ljava/lang/String;
    .end local v31    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v33    # "key":Ljava/lang/String;
    .end local v34    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_a
    :goto_6
    move/from16 v12, v32

    .line 225
    .local v12, "finalIsGif":Z
    move-object v13, v5

    .line 226
    .local v13, "finalUrl":Ljava/lang/String;
    move-object/from16 v17, v23

    .line 227
    .local v17, "finalAuthCode":Ljava/lang/String;
    move-object/from16 v15, v27

    .line 228
    .local v15, "finalCommonMediaId":Ljava/lang/String;
    move-object/from16 v16, v24

    .line 229
    .local v16, "finalAuthCommonMediaId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v18

    .line 230
    .local v18, "finalAuthEntity":Ljava/lang/String;
    move-object/from16 v19, v30

    .line 231
    .local v19, "finalEmotionName":Ljava/lang/String;
    move/from16 v20, v37

    .line 232
    .local v20, "finalThirdPartyWidth":I
    move/from16 v21, v36

    .line 233
    .local v21, "finalThirdPartyHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    new-instance v9, Lczk$1;

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    move-object/from16 v22, p2

    invoke-direct/range {v9 .. v22}, Lczk$1;-><init>(Lczk;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    sget-object v3, Lczk;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 313
    if-nez v32, :cond_14

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lczk;->a(Landroid/widget/ImageView;)V

    .line 318
    :goto_7
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual/range {p0 .. p2}, Lczk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    .line 16443
    sget v3, Lctk$i;->lst_msg_tip_pic:I

    invoke-static {v3}, Lczk;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->ab:Lpl/droidsonroids/gif/GifImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->d:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v2, :cond_d

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lczk;->d:Landroid/app/Activity;

    move-object/from16 v26, v0

    check-cast v26, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 16523
    .local v26, "chatMsgActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g:Ldew;

    .line 327
    if-eqz v2, :cond_d

    .line 17523
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g:Ldew;

    move-object/from16 v35, v0

    .line 18028
    .local v35, "quickPraiseGuideManager":Ldew;
    if-eqz p2, :cond_15

    invoke-static/range {p2 .. p2}, Ldkc;->I(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcms;->e()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 18029
    invoke-static {}, Ldkj;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 18030
    const-string/jumbo v2, "quick_praise_msg_guide"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, v35

    iget-object v2, v0, Ldew;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_b

    .line 18031
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    move-object/from16 v0, v35

    iget-object v4, v0, Ldew;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_15

    .line 18032
    :cond_b
    const/4 v2, 0x1

    .line 329
    :goto_8
    if-eqz v2, :cond_1a

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->a:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_c

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lczk;->a:Landroid/view/View;

    move-object/from16 v38, v0

    check-cast v38, Landroid/view/ViewStub;

    .line 332
    .local v38, "viewStub":Landroid/view/ViewStub;
    invoke-virtual/range {v38 .. v38}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lczk;->a:Landroid/view/View;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->a:Landroid/view/View;

    sget v3, Lctk$f;->small_text_tip_arrow_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lczk;->ac:Landroid/view/View;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->a:Landroid/view/View;

    sget v3, Lctk$f;->small_text_tip_arrow_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lczk;->ad:Landroid/view/View;

    .line 18523
    .end local v38    # "viewStub":Landroid/view/ViewStub;
    :cond_c
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g:Ldew;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lczk;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lczk;->ac:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk;->ad:Landroid/view/View;

    .line 19041
    if-eqz v3, :cond_d

    if-nez p2, :cond_16

    .line 342
    .end local v26    # "chatMsgActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .end local v35    # "quickPraiseGuideManager":Ldew;
    :cond_d
    :goto_9
    return-void

    .line 143
    .end local v12    # "finalIsGif":Z
    .end local v13    # "finalUrl":Ljava/lang/String;
    .end local v15    # "finalCommonMediaId":Ljava/lang/String;
    .end local v16    # "finalAuthCommonMediaId":Ljava/lang/String;
    .end local v17    # "finalAuthCode":Ljava/lang/String;
    .end local v18    # "finalAuthEntity":Ljava/lang/String;
    .end local v19    # "finalEmotionName":Ljava/lang/String;
    .end local v20    # "finalThirdPartyWidth":I
    .end local v21    # "finalThirdPartyHeight":I
    .restart local v25    # "authUrl":Ljava/lang/String;
    .restart local v29    # "emotionMediaId":Ljava/lang/String;
    .restart local v31    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .restart local v34    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v28

    .line 144
    .local v28, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual/range {v28 .. v28}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 11431
    .end local v28    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 154
    :cond_f
    if-eqz v34, :cond_11

    invoke-virtual/range {v34 .. v34}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_10

    invoke-virtual/range {v34 .. v34}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-lez v2, :cond_11

    .line 155
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Z:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 157
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Z:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    const/4 v2, 0x2

    .line 13119
    iput v2, v8, Lhcg$a;->f:I

    .line 159
    const/16 v32, 0x1

    goto/16 :goto_2

    .line 165
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Z:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "e_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 169
    const/4 v2, 0x0

    .line 14124
    iput-boolean v2, v8, Lhcg$a;->d:Z

    goto/16 :goto_3

    .line 186
    :catch_1
    move-exception v28

    .line 187
    .local v28, "e":Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 198
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v33    # "key":Ljava/lang/String;
    :catch_2
    move-exception v28

    .line 199
    .restart local v28    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 220
    .end local v28    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lczk;->Y:Landroid/widget/ImageView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lczk;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v7, v0, Lczk;->L:Landroid/view/View;

    check-cast v7, Landroid/widget/AbsListView;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_6

    .line 316
    .end local v25    # "authUrl":Ljava/lang/String;
    .end local v29    # "emotionMediaId":Ljava/lang/String;
    .end local v31    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v33    # "key":Ljava/lang/String;
    .end local v34    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .restart local v12    # "finalIsGif":Z
    .restart local v13    # "finalUrl":Ljava/lang/String;
    .restart local v15    # "finalCommonMediaId":Ljava/lang/String;
    .restart local v16    # "finalAuthCommonMediaId":Ljava/lang/String;
    .restart local v17    # "finalAuthCode":Ljava/lang/String;
    .restart local v18    # "finalAuthEntity":Ljava/lang/String;
    .restart local v19    # "finalEmotionName":Ljava/lang/String;
    .restart local v20    # "finalThirdPartyWidth":I
    .restart local v21    # "finalThirdPartyHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->Y:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lczk;->b(Landroid/widget/ImageView;)V

    goto/16 :goto_7

    .line 18035
    .restart local v26    # "chatMsgActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .restart local v35    # "quickPraiseGuideManager":Ldew;
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 19044
    :cond_16
    move-object/from16 v0, p2

    iput-object v0, v2, Ldew;->a:Lcom/alibaba/wukong/im/Message;

    .line 19045
    new-instance v7, Ldew$1;

    invoke-direct {v7, v2, v3}, Ldew$1;-><init>(Ldew;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19051
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19052
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v40

    cmp-long v2, v2, v40

    if-nez v2, :cond_18

    .line 19053
    if-eqz v4, :cond_17

    .line 19054
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19056
    :cond_17
    if-eqz v6, :cond_d

    .line 19057
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 19060
    :cond_18
    if-eqz v4, :cond_19

    .line 19061
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19063
    :cond_19
    if-eqz v6, :cond_d

    .line 19064
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 338
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lczk;->a:Landroid/view/View;

    .line 19070
    if-eqz v2, :cond_d

    .line 19071
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public abstract a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lczk;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_image:I

    invoke-static {v2}, Lczk;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    sget v0, Lctk$i;->lst_msg_tip_pic:I

    invoke-static {v0}, Lczk;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
