.class public Ldkc;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldkc$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Ldkc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkc;->a:Ljava/lang/String;

    .line 112
    sget v0, Lctk$i;->dt_ding_notify_ding:I

    sput v0, Ldkc;->b:I

    .line 113
    sget v0, Lctk$i;->dt_ding_notify_task:I

    sput v0, Ldkc;->c:I

    .line 114
    sget v0, Lctk$i;->dt_ding_notify_conference:I

    sput v0, Ldkc;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    return-void
.end method

.method public static A(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1225
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static B(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 1229
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return v1

    .line 1232
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1233
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xca

    if-eq v2, v3, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    .line 1236
    :cond_2
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    .line 1237
    .end local v0    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-static {v0, p0}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lebj;->c(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static C(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x0

    .line 1265
    if-nez p0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static D(Lcom/alibaba/wukong/im/Message;)V
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1277
    invoke-static {p0}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    .line 1281
    .local v4, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v8, v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v8, :cond_0

    move-object v3, v4

    .line 1282
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 1283
    .local v3, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    .line 1284
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 1287
    const-string/jumbo v8, "e_id"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1288
    .local v1, "emotionId":Ljava/lang/String;
    const-string/jumbo v8, "p_id"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1289
    .local v5, "packageId":Ljava/lang/String;
    const-string/jumbo v8, "p_t_id"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1290
    .local v7, "topicId":Ljava/lang/String;
    const-string/jumbo v8, "3rd_emotion_id"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1291
    .local v0, "dynamicEmotionId":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1292
    .local v6, "statisMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "emotion_id"

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string/jumbo v8, "p_id"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string/jumbo v8, "topic_id"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v8, "dynamic_emotion_id"

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "dt_im_gif_favorite_emotion"

    invoke-interface {v8, v9, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static E(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1301
    invoke-static {p0}, Ldkc;->F(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static F(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1305
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1306
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x578

    if-ne v2, v3, :cond_0

    instance-of v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 1308
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1309
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    if-eqz v2, :cond_0

    .line 1310
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    .line 1311
    .local v1, "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaContentTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaReportExtension:Ljava/lang/String;

    .line 1312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->oaReportId:Ljava/lang/String;

    .line 1313
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1318
    .end local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v1    # "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static G(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x1

    .line 1325
    invoke-static {p0}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1327
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-eq v2, v1, :cond_0

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static H(Lcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1335
    invoke-static {p0}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return v1

    .line 1339
    :cond_1
    invoke-static {p0}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1341
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-eq v3, v2, :cond_0

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static I(Lcom/alibaba/wukong/im/Message;)Z
    .locals 14
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1345
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    move v9, v11

    .line 1367
    :goto_0
    return v9

    .line 1348
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 1349
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/4 v12, 0x2

    if-eq v9, v12, :cond_2

    .line 1350
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v12, 0xfb

    if-ne v9, v12, :cond_4

    :cond_2
    instance-of v9, v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v9, :cond_4

    move-object v1, v2

    .line 1352
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 1353
    .local v1, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 1354
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 1355
    const-string/jumbo v9, "p_id"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 8109
    const-wide/16 v12, 0x0

    invoke-static {v9, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1356
    .local v4, "packageId":J
    const-string/jumbo v9, "pr_uuid"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1357
    .local v6, "praiseUuid":Ljava/lang/String;
    const-string/jumbo v9, "pr_type"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 8150
    invoke-static {v9, v11}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 1358
    .local v3, "praiseType":I
    const-string/jumbo v9, "pr_url"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1359
    .local v8, "urlPrefix":Ljava/lang/String;
    const-wide/16 v12, -0xa

    cmp-long v9, v4, v12

    if-nez v9, :cond_4

    if-ne v3, v10, :cond_4

    .line 1361
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1362
    invoke-static {v8, v6}, Ldkj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1363
    .local v7, "quickPraiseUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v10

    goto :goto_0

    :cond_3
    move v9, v11

    goto :goto_0

    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v3    # "praiseType":I
    .end local v4    # "packageId":J
    .end local v6    # "praiseUuid":Ljava/lang/String;
    .end local v7    # "quickPraiseUrl":Ljava/lang/String;
    .end local v8    # "urlPrefix":Ljava/lang/String;
    :cond_4
    move v9, v11

    .line 1367
    goto :goto_0
.end method

.method public static J(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 1371
    if-nez p0, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return v1

    .line 1374
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1375
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    .line 1376
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x5dc

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static K(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 1382
    if-eqz p0, :cond_0

    instance-of v3, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v0, p0

    .line 1385
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1386
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 1387
    .local v1, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v3, v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x4b3

    if-ne v3, v4, :cond_0

    .line 1388
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v3, :cond_0

    .line 1389
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    goto :goto_0
.end method

.method public static L(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x1

    .line 1489
    if-nez p0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return v1

    .line 1492
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 1493
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 1497
    invoke-static {v0, p0}, Ldkc;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public static M(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 1508
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1509
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 1519
    :goto_0
    return v1

    .line 1510
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 1511
    .local v0, "contentType":I
    const/16 v1, 0x1f4

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1f5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1f6

    if-ne v1, v0, :cond_3

    .line 1514
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1515
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "doc_readonly"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1516
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1519
    goto :goto_0
.end method

.method public static N(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1582
    instance-of v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v4, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return v2

    .line 1586
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_space_message_upload_progress_enable"

    .line 10083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1588
    .local v1, "featureEnable":Z
    if-eqz v1, :cond_0

    move-object v0, p0

    .line 1592
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1594
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToSpace:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToSpaceVideo:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ToEncryptedFile:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v4, v5, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static O(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v6, 0x0

    .line 1688
    instance-of v7, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v7, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v2, p0

    .line 1691
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1692
    .local v2, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v7, :cond_0

    .line 1696
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1697
    .local v4, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1698
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1701
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent;

    .line 1702
    .local v3, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v7, v3, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 1705
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 1707
    .local v1, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v0

    .line 1709
    .local v0, "contentExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1710
    const-string/jumbo v7, "reportid"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1711
    .local v5, "reportId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static P(Lcom/alibaba/wukong/im/Message;)Ldkc$a;
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-static {p0}, Ldkc;->f(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-nez v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-object v2

    .line 558
    :cond_1
    const/16 v3, 0x4b1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 561
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    .line 562
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->title()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    new-instance v2, Ldkc$a;

    invoke-direct {v2}, Ldkc$a;-><init>()V

    .line 564
    .local v2, "info":Ldkc$a;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldkc$a;->d:Ljava/lang/String;

    .line 565
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->title()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldkc$a;->a:Ljava/lang/String;

    .line 566
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->text()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldok;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldkc$a;->c:Ljava/lang/String;

    .line 567
    iget-object v3, v2, Ldkc$a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 569
    :try_start_0
    iget-object v3, v2, Ldkc$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldkc$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :cond_2
    :goto_1
    const-string/jumbo v3, ""

    iput-object v3, v2, Ldkc$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static Q(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "encrypt":Z
    if-eqz p0, :cond_0

    .line 848
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const/4 v0, 0x1

    .line 852
    :cond_0
    return v0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "encryptContent"    # Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .prologue
    .line 856
    if-nez p0, :cond_1

    .line 857
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "MessageUtils"

    const-string/jumbo v3, "encryptContent is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x0

    .line 873
    :cond_0
    :goto_0
    return-object v0

    .line 860
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 861
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 862
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 863
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 864
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->size()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 865
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 866
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->appId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    .line 867
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->orgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 868
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->priority()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    .line 869
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->isEncrypt()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 870
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    goto :goto_0

    .line 869
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1157
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1158
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    .end local v0    # "index":I
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :goto_1
    return-object v1

    .line 1156
    .restart local v0    # "index":I
    .restart local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1163
    .end local v0    # "index":I
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "tipsId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1600
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "["

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1601
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    .line 1600
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 9
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1056
    if-ltz p0, :cond_0

    const/16 v3, 0xb

    if-gt p0, v3, :cond_0

    .line 1057
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->calendar_morning:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "apTopic":Ljava/lang/String;
    :goto_0
    if-lt p0, v5, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "hourStr":Ljava/lang/String;
    :goto_1
    if-lt p1, v5, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "minuteStr":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->date_format_am_pm_hh_mm:I

    .line 1071
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v6

    const-string/jumbo v6, ":"

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    .line 1072
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1070
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v0    # "apTopic":Ljava/lang/String;
    .end local v1    # "hourStr":Ljava/lang/String;
    .end local v2    # "minuteStr":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 1059
    :cond_0
    const/16 v3, 0xc

    if-lt p0, v3, :cond_1

    const/16 v3, 0x17

    if-gt p0, v3, :cond_1

    .line 1060
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->calendar_afternoon:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "apTopic":Ljava/lang/String;
    goto :goto_0

    .line 1063
    .end local v0    # "apTopic":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    .line 1066
    .restart local v0    # "apTopic":Ljava/lang/String;
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "0"

    aput-object v4, v3, v6

    .line 1067
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1066
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1068
    .restart local v1    # "hourStr":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "0"

    aput-object v5, v4, v6

    .line 1069
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static final a(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "itemView"    # Landroid/view/View;

    .prologue
    .line 1453
    if-nez p0, :cond_0

    .line 1454
    const/4 v3, 0x0

    .line 1462
    :goto_0
    return-object v3

    .line 1456
    :cond_0
    sget v3, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1457
    .local v1, "mdParentView":Landroid/view/View;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1458
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 1459
    check-cast v2, Landroid/view/ViewGroup;

    .line 1460
    .local v2, "mdParentViewGroup":Landroid/view/ViewGroup;
    invoke-static {v2, v0}, Ldkc;->a(Landroid/view/ViewGroup;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    .line 1462
    .end local v2    # "mdParentViewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "dingCardContent"    # Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .prologue
    .line 1188
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 1190
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->msgType()Ljava/lang/String;

    move-result-object v2

    .line 1191
    .local v2, "msgType":Ljava/lang/String;
    const-string/jumbo v4, "dingMsgType"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1192
    const-string/jumbo v4, "dingMsgType"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    :cond_0
    const-string/jumbo v4, "2"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1197
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_chat_ding_content_audio:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "dingContent":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1206
    .local v3, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->bizType()Ljava/lang/String;

    move-result-object v4

    .line 7150
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1207
    .local v0, "bizType":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 1209
    sget v4, Ldkc;->d:I

    invoke-static {v4}, Ldkc;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1217
    :goto_1
    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1218
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1221
    .end local v0    # "bizType":I
    .end local v1    # "dingContent":Ljava/lang/String;
    .end local v2    # "msgType":Ljava/lang/String;
    .end local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_2
    return-object v4

    .line 1199
    .restart local v2    # "msgType":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->content()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .restart local v1    # "dingContent":Ljava/lang/String;
    const-string/jumbo v4, "dingContent"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1201
    const-string/jumbo v4, "dingContent"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1210
    .restart local v0    # "bizType":I
    .restart local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1212
    sget v4, Ldkc;->c:I

    invoke-static {v4}, Ldkc;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1215
    :cond_4
    sget v4, Ldkc;->b:I

    invoke-static {v4}, Ldkc;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1221
    .end local v0    # "bizType":I
    .end local v1    # "dingContent":Ljava/lang/String;
    .end local v2    # "msgType":Ljava/lang/String;
    .end local v3    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    const-string/jumbo v4, ""

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "commentTitle"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 609
    if-nez p0, :cond_0

    .line 610
    const-string/jumbo v1, ""

    .line 617
    :goto_0
    return-object v1

    .line 612
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    .line 613
    .local v0, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    const-string/jumbo p1, ""

    :cond_1
    move-object v1, p1

    .line 617
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "just4Sender"    # Z

    .prologue
    const/4 v2, 0x0

    .line 806
    if-nez p0, :cond_1

    move-object v0, v2

    .line 820
    :cond_0
    :goto_0
    return-object v0

    .line 809
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 810
    goto :goto_0

    .line 812
    :cond_2
    invoke-static {p0}, Ldkc;->r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v2

    .line 813
    goto :goto_0

    .line 815
    :cond_3
    const-string/jumbo v3, "msg_trans_provider"

    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "autoProvider":Ljava/lang/String;
    const-string/jumbo v3, "msg_trans_original"

    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "autoOriginalText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move-object v0, v2

    .line 820
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;
    .locals 4
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 951
    .local v0, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "isEncrypt"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v1, "oid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string/jumbo v1, "appId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v1, "priority"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v1, "f_size"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string/jumbo v1, "s_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string/jumbo v1, "f_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string/jumbo v1, "f_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string/jumbo v1, "f_name"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;I)Ljava/util/Map;
    .locals 7
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "messageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1396
    if-eqz p0, :cond_0

    instance-of v5, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v5, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-object v4

    :cond_1
    move-object v0, p0

    .line 1399
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1400
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 1401
    .local v1, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v5, v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v5, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    const/16 v6, 0x4b3

    if-ne v5, v6, :cond_0

    move-object v2, v1

    .line 1402
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1403
    .local v2, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1404
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent;

    .line 1405
    .local v3, "realContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v5, v3, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v5, :cond_0

    .line 1406
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .end local v3    # "realContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V
    .locals 3
    .param p0, "mdParentViewGroup"    # Landroid/view/ViewGroup;
    .param p1, "ddStringBuilder"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .prologue
    .line 1467
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1486
    :cond_0
    return-void

    .line 1470
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1471
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1472
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 1473
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Ldkc;->a(Landroid/view/ViewGroup;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    .line 1471
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1475
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1476
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1477
    invoke-virtual {p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1478
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1480
    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V
    .locals 8
    .param p0, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .prologue
    .line 1415
    if-nez p0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->markdown:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1422
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1423
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1424
    const-string/jumbo v5, "![]("

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1426
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1427
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1428
    new-instance v1, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;-><init>()V

    .line 1429
    .local v1, "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    sget v5, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->TYPE_INLINE_IMG:I

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;->setType(I)V

    .line 1430
    invoke-static {v1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, "json":Ljava/lang/String;
    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "!["

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "utf-8"

    invoke-static {v4, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "]"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1438
    .local v3, "format":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")  "

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1440
    .end local v1    # "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "json":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1441
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1443
    :cond_5
    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1445
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1446
    const-string/jumbo v5, "#### "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1447
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1449
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->markdown:Ljava/lang/String;

    goto/16 :goto_0

    .line 1434
    .restart local v1    # "dtImageFormat":Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;
    .restart local v4    # "json":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1435
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1436
    const-string/jumbo v3, "![%7b%22type%22%3a%221%22%7d]"

    .restart local v3    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a(Lhcg$a;Ljava/util/Map;)V
    .locals 1
    .param p0, "imageProperty"    # Lhcg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhcg$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 1146
    iget-object v0, p0, Lhcg$a;->l:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1147
    iput-object p1, p0, Lhcg$a;->l:Ljava/util/Map;

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    if-eqz p1, :cond_0

    .line 1149
    iget-object v0, p0, Lhcg$a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1501
    invoke-static {p1}, Ldkc;->M(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8526
    if-eqz v3, :cond_4

    .line 8527
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 8528
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 8529
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    .line 1501
    :goto_0
    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    return v0

    .line 8531
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8532
    if-eqz v0, :cond_4

    .line 8533
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    move v0, v2

    .line 8534
    goto :goto_0

    :cond_4
    move v0, v1

    .line 8537
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1501
    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 13
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/16 v12, 0x4b0

    const/16 v11, 0x1f5

    const/16 v10, 0x1f4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string/jumbo v5, "im"

    sget-object v7, Ldkc;->a:Ljava/lang/String;

    const-string/jumbo v8, "[canMessageDing] message is null"

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 231
    :goto_0
    return v5

    .line 123
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 124
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v5, "im"

    sget-object v7, Ldkc;->a:Ljava/lang/String;

    const-string/jumbo v8, "[canMessageDing] conversation is null"

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 126
    goto :goto_0

    .line 129
    :cond_1
    instance-of v5, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v5, :cond_2

    .line 130
    const-string/jumbo v5, "im"

    sget-object v7, Ldkc;->a:Ljava/lang/String;

    const-string/jumbo v8, "[canMessageDing] is not DingTalk message"

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    if-nez v5, :cond_3

    .line 135
    const-string/jumbo v5, "im"

    sget-object v7, Ldkc;->a:Ljava/lang/String;

    const-string/jumbo v8, "[canMessageDing] message content is null"

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 136
    goto :goto_0

    .line 140
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    .line 141
    .local v2, "conversationTag":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    const-wide/16 v8, 0x2

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    const-wide/16 v8, 0x9

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    move v5, v6

    .line 144
    goto :goto_0

    .line 148
    :cond_4
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v5

    sget-object v8, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v5, v8, :cond_5

    move v5, v6

    .line 149
    goto :goto_0

    .line 153
    :cond_5
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v5

    sget-object v8, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v5, v8, :cond_6

    move v5, v6

    .line 154
    goto :goto_0

    .line 162
    :cond_6
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v1

    .line 163
    .local v1, "messageType":Lcom/alibaba/wukong/im/Message$MessageType;
    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v5, :cond_7

    move-object v5, p0

    .line 164
    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v5, v5, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-nez v5, :cond_7

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 168
    :cond_7
    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v5, :cond_8

    .line 169
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    .line 170
    goto/16 :goto_0

    .line 173
    :cond_8
    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v1, v5, :cond_9

    move v5, v6

    .line 174
    goto/16 :goto_0

    .line 191
    :cond_9
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    .line 192
    .local v4, "msgContentType":I
    if-eq v4, v7, :cond_a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    const/16 v5, 0xfb

    if-eq v4, v5, :cond_a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    const/16 v5, 0xfc

    if-eq v4, v5, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    const/16 v5, 0x66

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_a

    const/16 v5, 0x190

    if-eq v4, v5, :cond_a

    if-eq v4, v10, :cond_a

    if-eq v4, v11, :cond_a

    const/16 v5, 0x2bc

    if-eq v4, v5, :cond_a

    if-eq v4, v12, :cond_a

    const/16 v5, 0x5dc

    if-eq v4, v5, :cond_a

    move v5, v6

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_a
    if-eq v4, v10, :cond_b

    if-ne v4, v11, :cond_c

    .line 211
    :cond_b
    invoke-static {v0, p0}, Ldkc;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v6

    .line 212
    goto/16 :goto_0

    .line 215
    :cond_c
    if-ne v4, v12, :cond_d

    .line 216
    invoke-static {p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v6

    .line 217
    goto/16 :goto_0

    .line 220
    :cond_d
    const/16 v5, 0x5dc

    if-ne v4, v5, :cond_e

    .line 221
    invoke-static {}, Lebc;->c()Z

    move-result v5

    if-nez v5, :cond_e

    move v5, v6

    .line 222
    goto/16 :goto_0

    .line 227
    :cond_e
    invoke-static {p0}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v6

    .line 228
    goto/16 :goto_0

    :cond_f
    move v5, v7

    .line 231
    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "messageExt"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .prologue
    .line 653
    if-eqz p0, :cond_2

    .line 654
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 655
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 656
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfc

    if-eq v0, v1, :cond_0

    .line 657
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    invoke-static {}, Ldrg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_2

    .line 659
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-ne v0, v1, :cond_2

    .line 660
    :cond_1
    const/4 v0, 0x1

    .line 663
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent;)Z
    .locals 2
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 1076
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v1, :cond_0

    .line 1077
    check-cast p0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .end local p0    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 1078
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "e_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    const/4 v1, 0x1

    .line 1082
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1561
    const-string/jumbo v1, "dd_disable_msg_menu"

    const-string/jumbo v2, "1"

    .line 8541
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8548
    :cond_0
    :goto_0
    return v0

    .line 8545
    :cond_1
    new-instance v3, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v3, p0}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 8546
    invoke-virtual {v3, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8548
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1614
    if-nez p0, :cond_1

    .line 1615
    const/16 p1, 0x0

    .line 1680
    .end local p1    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1617
    .restart local p1    # "content":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1620
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    .line 1621
    .local v9, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v19

    const/16 v20, 0x4b0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1624
    invoke-static/range {p0 .. p0}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1628
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v5

    .line 1629
    .local v5, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1633
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1634
    .local v6, "atUidNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1635
    .local v11, "nameUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1637
    .local v7, "duplicatedNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 1639
    .local v18, "userId":Ljava/lang/Long;
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1640
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1641
    :cond_2
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1642
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1644
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v11, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1647
    .end local v10    # "name":Ljava/lang/String;
    .end local v18    # "userId":Ljava/lang/Long;
    :cond_4
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1651
    move-object/from16 v14, p1

    .line 1655
    .local v14, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1656
    .local v12, "needReplaceName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1659
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 1660
    .local v15, "uid":Ljava/lang/Long;
    if-eqz v15, :cond_5

    .line 11044
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v16

    .line 1664
    .local v16, "uidL":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1665
    .local v13, "replaceName":Ljava/lang/StringBuilder;
    const-string/jumbo v20, "@"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1667
    .local v4, "afterReplaceUid":Ljava/lang/StringBuilder;
    const-string/jumbo v20, "@"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1669
    goto :goto_2

    .line 1670
    .end local v4    # "afterReplaceUid":Ljava/lang/StringBuilder;
    .end local v12    # "needReplaceName":Ljava/lang/String;
    .end local v13    # "replaceName":Ljava/lang/StringBuilder;
    .end local v15    # "uid":Ljava/lang/Long;
    .end local v16    # "uidL":J
    :catch_0
    move-exception v8

    .line 1671
    .local v8, "ex":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 1672
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v19

    sget v20, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1673
    throw v8

    .line 1675
    :cond_6
    const-string/jumbo v19, "im"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "MarkdownReplyUtils[getOriginalAtString] exception"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 1676
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1675
    invoke-static/range {v19 .. v21}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_7
    move-object/from16 p1, v14

    .line 1680
    goto/16 :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;
    .locals 8
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    const/4 v0, 0x0

    .line 1086
    if-eqz p0, :cond_2

    instance-of v3, p0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v3, :cond_2

    .line 1087
    check-cast p0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .end local p0    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    .line 1088
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 1089
    const-string/jumbo v3, "p_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1090
    .local v2, "pName":Ljava/lang/String;
    const-string/jumbo v3, "p_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4150
    invoke-static {v3, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 1090
    int-to-long v4, v3

    const-wide/16 v6, -0xa

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 1092
    .local v0, "isPraise":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1093
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->dt_chat_last_msg_praise:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .end local v2    # "pName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .end local v0    # "isPraise":Z
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1169
    .local v0, "copiedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1170
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1172
    .local v1, "curMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1173
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1178
    .end local v0    # "copiedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .end local v1    # "curMsg":Lcom/alibaba/wukong/im/Message;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Message;>;"
    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 6
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1570
    if-nez p0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v0

    .line 1574
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 9109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1578
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 235
    invoke-static {p0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p0}, Ldkc;->J(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "messageExt"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;

    .prologue
    .line 667
    if-eqz p0, :cond_1

    .line 668
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 670
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfc

    if-eq v0, v1, :cond_0

    .line 671
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    invoke-static {}, Ldrg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_1

    .line 673
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->e:I

    sget v1, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$c;->d:I

    if-eq v0, v1, :cond_1

    .line 674
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    const/4 v0, 0x0

    .line 1242
    if-nez p0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-object v0

    .line 1245
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1246
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xfb

    if-ne v1, v2, :cond_0

    .line 1248
    :cond_2
    invoke-static {p0}, Ldkc;->a(Lcom/alibaba/wukong/im/MessageContent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1250
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_lst_msg_tip_emotion:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 1252
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->lst_msg_tip_pic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 241
    invoke-static {p0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Ldkc;->J(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 248
    .local v0, "contentType":I
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 250
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move v2, v3

    .line 286
    .local v2, "result":Z
    :cond_1
    :goto_0
    return v2

    .line 253
    .end local v2    # "result":Z
    :cond_2
    invoke-static {p0}, Ldkc;->Q(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 256
    if-eq v2, v0, :cond_1

    const/4 v4, 0x3

    if-eq v4, v0, :cond_1

    const/16 v4, 0xfc

    if-eq v4, v0, :cond_1

    const/4 v4, 0x2

    if-eq v4, v0, :cond_1

    const/16 v4, 0xfb

    if-eq v4, v0, :cond_1

    const/4 v4, 0x4

    if-eq v4, v0, :cond_1

    const/16 v4, 0x66

    if-eq v4, v0, :cond_1

    const/16 v4, 0x67

    if-eq v4, v0, :cond_1

    const/16 v4, 0xfd

    if-eq v4, v0, :cond_1

    const/16 v4, 0xca

    if-eq v4, v0, :cond_1

    const/16 v4, 0xfe

    if-eq v4, v0, :cond_1

    const/16 v4, 0x4b0

    if-eq v4, v0, :cond_1

    const/16 v4, 0x4b1

    if-eq v4, v0, :cond_1

    const/16 v4, 0x4b3

    if-eq v4, v0, :cond_1

    const/16 v4, 0x640

    if-eq v4, v0, :cond_1

    const/16 v4, 0x258

    if-eq v4, v0, :cond_1

    const/16 v4, 0x1f4

    if-eq v4, v0, :cond_1

    const/16 v4, 0x1f5

    if-eq v4, v0, :cond_1

    const/16 v4, 0x1f7

    if-eq v4, v0, :cond_1

    const/16 v4, 0x1f8

    if-eq v4, v0, :cond_1

    const/16 v4, 0x2bc

    if-eq v4, v0, :cond_1

    const/16 v4, 0x12d

    if-eq v4, v0, :cond_1

    const/16 v4, 0x12c

    if-eq v4, v0, :cond_1

    const/16 v4, 0x68

    if-eq v4, v0, :cond_1

    .line 280
    invoke-static {p0}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x578

    if-eq v4, v0, :cond_1

    const/16 v4, 0x5dc

    if-eq v4, v0, :cond_1

    const/16 v4, 0x960

    if-eq v4, v0, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 290
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 291
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    .line 292
    :cond_0
    const/4 v4, 0x0

    .line 341
    :cond_1
    :goto_0
    return v4

    .line 295
    :cond_2
    const/4 v3, 0x0

    .line 296
    .local v3, "isTypeChecked":Z
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 297
    .local v0, "contentType":I
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_space_file_decrypt_before_forward"

    .line 2083
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 299
    .local v2, "isFavoriteEncryptFeatureEnable":Z
    if-eqz v2, :cond_5

    const/16 v5, 0x1f6

    if-ne v0, v5, :cond_5

    .line 301
    const/4 v3, 0x1

    .line 331
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 332
    .local v4, "result":Z
    if-eqz v3, :cond_1

    .line 333
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v5

    sget-object v6, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 334
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v5

    sget-object v6, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 335
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v5

    sget-object v6, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 336
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 303
    .end local v4    # "result":Z
    :cond_5
    invoke-static {p0}, Ldkc;->Q(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 304
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    const/16 v5, 0x258

    if-eq v0, v5, :cond_3

    const/16 v5, 0x4b0

    if-eq v0, v5, :cond_3

    const/16 v5, 0x4b1

    if-eq v0, v5, :cond_3

    const/16 v5, 0x4b3

    if-eq v0, v5, :cond_3

    const/16 v5, 0x640

    if-eq v0, v5, :cond_3

    const/16 v5, 0x5dc

    if-eq v0, v5, :cond_3

    const/16 v5, 0x386

    if-eq v5, v0, :cond_3

    const/16 v5, 0x385

    if-eq v5, v0, :cond_3

    const/16 v5, 0x384

    if-eq v5, v0, :cond_3

    const/16 v5, 0x38c

    if-eq v5, v0, :cond_3

    const/16 v5, 0x388

    if-eq v5, v0, :cond_3

    const/16 v5, 0x389

    if-eq v5, v0, :cond_3

    const/16 v5, 0x44d

    if-eq v5, v0, :cond_3

    const/16 v5, 0x514

    if-eq v5, v0, :cond_3

    const/16 v5, 0x578

    if-eq v5, v0, :cond_3

    const/16 v5, 0x1f7

    if-eq v5, v0, :cond_3

    const/16 v5, 0x1f8

    if-eq v5, v0, :cond_3

    const/16 v5, 0x960

    if-eq v5, v0, :cond_3

    .line 323
    invoke-static {p0}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 324
    invoke-static {p0}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x76c

    if-eq v5, v0, :cond_3

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 338
    .restart local v4    # "result":Z
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public static f(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/16 v5, 0x4b1

    const/4 v3, 0x0

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "result":Z
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 347
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v2, v1

    .line 2453
    :goto_1
    return v2

    .line 349
    :cond_2
    invoke-static {p0}, Ldkc;->Q(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 351
    .local v0, "contentType":I
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v2

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v2, v4, :cond_1

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    const/16 v2, 0xfc

    if-eq v2, v0, :cond_1

    const/16 v2, 0xcc

    if-eq v2, v0, :cond_1

    const/16 v2, 0x640

    if-eq v2, v0, :cond_1

    const/16 v2, 0x514

    if-eq v2, v0, :cond_1

    const/16 v2, 0x190

    if-eq v2, v0, :cond_1

    const/16 v2, 0x12d

    if-eq v2, v0, :cond_1

    const/16 v2, 0x386

    if-eq v2, v0, :cond_1

    const/16 v2, 0x385

    if-eq v2, v0, :cond_1

    const/16 v2, 0x384

    if-eq v2, v0, :cond_1

    const/16 v2, 0x38c

    if-eq v2, v0, :cond_1

    const/16 v2, 0x389

    if-eq v2, v0, :cond_1

    const/16 v2, 0x44d

    if-eq v2, v0, :cond_1

    const/16 v2, 0x388

    if-eq v2, v0, :cond_1

    const/16 v2, 0x578

    if-eq v2, v0, :cond_1

    const/16 v2, 0x960

    if-eq v2, v0, :cond_1

    const/16 v2, 0x76c

    if-eq v2, v0, :cond_1

    .line 369
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 370
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 371
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 374
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 376
    :cond_4
    if-ne v5, v0, :cond_8

    .line 2444
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-nez v2, :cond_6

    :cond_5
    move v2, v3

    .line 2445
    goto/16 :goto_1

    .line 2447
    :cond_6
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    if-ne v5, v2, :cond_7

    .line 2450
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    .line 2451
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->extension()Ljava/util/Map;

    move-result-object v2

    const-class v4, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    invoke-static {v2, v4}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    .line 2452
    if-eqz v2, :cond_7

    .line 2453
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->checkForwardable()Z

    move-result v2

    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 377
    goto/16 :goto_1

    .line 379
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static g(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 406
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 412
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    .line 416
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 425
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 427
    .local v1, "messageContentType":I
    const/16 v3, 0x388

    if-eq v1, v3, :cond_0

    const/16 v3, 0x387

    if-eq v1, v3, :cond_0

    const/16 v3, 0x384

    if-eq v1, v3, :cond_0

    const/16 v3, 0x38c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x389

    if-eq v1, v3, :cond_0

    const/16 v3, 0x38a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x386

    if-eq v1, v3, :cond_0

    const/16 v3, 0x385

    if-eq v1, v3, :cond_0

    const/16 v3, 0x76c

    if-eq v1, v3, :cond_0

    .line 440
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/wukong/im/Message;)Z
    .locals 9
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 463
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v4, v5, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 467
    :cond_1
    invoke-static {p0}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 471
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 472
    .local v0, "contentType":I
    if-eq v0, v8, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0xfb

    if-eq v0, v4, :cond_2

    const/16 v4, 0x67

    if-eq v0, v4, :cond_2

    const/16 v4, 0xfd

    if-eq v0, v4, :cond_2

    const/16 v4, 0xca

    if-eq v0, v4, :cond_2

    const/16 v4, 0xfe

    if-eq v0, v4, :cond_2

    const/16 v4, 0x1f4

    if-eq v4, v0, :cond_2

    const/16 v4, 0x1f5

    if-eq v4, v0, :cond_2

    const/16 v4, 0x1f7

    if-ne v4, v0, :cond_0

    .line 482
    :cond_2
    const/4 v1, 0x0

    .line 484
    .local v1, "hasSpace":Z
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JI)Ljava/util/List;

    move-result-object v3

    .line 485
    .local v3, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v3, :cond_0

    .line 486
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 487
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v5

    sget-object v6, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v5, v6, :cond_3

    .line 488
    const/4 v1, 0x1

    .line 489
    goto :goto_0
.end method

.method public static i(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 501
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v0, v1, :cond_0

    .line 517
    :cond_0
    return v2
.end method

.method public static j(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 525
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v2, v3, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 529
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 531
    .local v0, "contentType":I
    const/16 v2, 0x1f4

    if-eq v2, v0, :cond_2

    const/16 v2, 0x1f5

    if-ne v2, v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 583
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v4, v5, :cond_0

    .line 584
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v2

    .line 588
    :cond_1
    invoke-static {p0}, Ldkc;->n(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 594
    .local v0, "contentType":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/16 v4, 0xfb

    if-ne v0, v4, :cond_3

    .line 595
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    const-string/jumbo v3, "png"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->m(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 598
    :cond_3
    const/16 v4, 0x1f4

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1f5

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1f6

    if-eq v0, v4, :cond_4

    const/16 v4, 0xcb

    if-ne v0, v4, :cond_0

    .line 600
    :cond_4
    invoke-static {p0}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 601
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x0

    .line 635
    .line 2628
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 635
    :goto_0
    if-eqz v1, :cond_1

    .line 636
    const-string/jumbo v1, "1"

    .line 637
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->hideAvatar()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 639
    :cond_1
    return v0

    .line 2631
    :cond_2
    const/16 v1, 0x4b1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static m(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 643
    invoke-static {p0}, Ldkc;->P(Lcom/alibaba/wukong/im/Message;)Ldkc$a;

    move-result-object v6

    .line 644
    .local v6, "info":Ldkc$a;
    if-eqz v6, :cond_0

    .line 645
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v1, v6, Ldkc$a;->d:Ljava/lang/String;

    iget-object v2, v6, Ldkc$a;->a:Ljava/lang/String;

    iget-object v3, v6, Ldkc$a;->b:Ljava/lang/String;

    iget-object v4, v6, Ldkc$a;->c:Ljava/lang/String;

    const/4 v5, 0x0

    .line 646
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    .line 649
    :goto_0
    return-object v7

    :cond_0
    move-object v7, p0

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/wukong/im/Message;)Z
    .locals 13
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/16 v12, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 681
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    instance-of v7, v7, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 710
    :cond_1
    :goto_0
    return v5

    .line 687
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 688
    .local v4, "messageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->type()I

    move-result v0

    .line 689
    .local v0, "contentType":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    const/16 v7, 0xfb

    if-ne v0, v7, :cond_6

    .line 690
    :cond_3
    invoke-static {p0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 691
    .local v1, "displayPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-wide v8, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    const-wide/32 v10, 0x100000

    cmp-long v7, v8, v10

    if-gtz v7, :cond_6

    .line 692
    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v8, "e_id"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 695
    :cond_4
    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 697
    :try_start_0
    iget-object v7, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 698
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 697
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 699
    .local v3, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v3, :cond_6

    .line 700
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getWidth()I

    move-result v7

    if-gt v7, v12, :cond_5

    .line 701
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getHeight()I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-le v7, v12, :cond_1

    :cond_5
    move v5, v6

    goto :goto_0

    .line 703
    .end local v3    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v2

    .line 704
    .local v2, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .end local v1    # "displayPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v2    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_6
    move v5, v6

    .line 710
    goto :goto_0
.end method

.method public static o(Lcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v4, 0x0

    .line 716
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 727
    :goto_0
    return v3

    .line 720
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 721
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->type()I

    move-result v0

    .line 722
    .local v0, "contentType":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/16 v3, 0xfb

    if-ne v0, v3, :cond_4

    .line 723
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    .line 724
    .local v1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    const-string/jumbo v3, "p_t_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "p_id"

    .line 725
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v1    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move v3, v4

    .line 727
    goto :goto_0
.end method

.method public static p(Lcom/alibaba/wukong/im/Message;)J
    .locals 7
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v4, 0x0

    .line 734
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-nez v6, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-wide v4

    .line 738
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 739
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->type()I

    move-result v0

    .line 740
    .local v0, "contentType":I
    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/16 v6, 0xfb

    if-ne v0, v6, :cond_0

    .line 741
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    .line 742
    .local v1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 743
    const-string/jumbo v6, "p_t_id"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3109
    .local v3, "topicId":Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method

.method public static q(Lcom/alibaba/wukong/im/Message;)Z
    .locals 7
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v5, 0x0

    .line 757
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-nez v6, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v5

    .line 761
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 762
    .local v4, "messageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->type()I

    move-result v3

    .line 763
    .local v3, "contentType":I
    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/16 v6, 0xfb

    if-ne v3, v6, :cond_0

    .line 764
    :cond_2
    invoke-static {v4, p0}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "authUrl":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "commonMediaId":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 767
    .local v0, "authCommonMediaId":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 768
    invoke-static {v1}, Ldjy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    :cond_3
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v6

    invoke-virtual {v6, v2}, Ldps;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 772
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v6

    invoke-virtual {v6, v0}, Ldps;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 773
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 786
    if-nez p0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-object v2

    .line 790
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 791
    .local v0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    const-string/jumbo v3, "translate_status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 793
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    const-string/jumbo v2, "translate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public static s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 877
    instance-of v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_1

    move-object v2, p0

    .line 878
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 879
    .local v1, "space":Ljava/lang/Object;
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spaceDo is empty="

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_1

    .line 882
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 891
    .end local v1    # "space":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 879
    .restart local v1    # "space":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 886
    .end local v1    # "space":Ljava/lang/Object;
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v2, :cond_2

    .line 887
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    .line 888
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
    invoke-static {v0}, Ldkc;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    goto :goto_1

    .line 891
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static t(Lcom/alibaba/wukong/im/Message;)J
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v4, 0x0

    .line 899
    invoke-static {p0}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 900
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-nez v2, :cond_1

    move-wide v0, v4

    .line 910
    :cond_0
    :goto_0
    return-wide v0

    .line 904
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->creatorId:Ljava/lang/String;

    .line 4109
    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 906
    .local v0, "creatorId":J
    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    if-eqz p0, :cond_0

    .line 907
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static u(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 919
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v1

    .line 923
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 924
    .local v0, "contentType":I
    const/16 v2, 0xcb

    if-eq v0, v2, :cond_2

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f6

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static v(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 936
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v1

    .line 939
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 940
    .local v0, "contentType":I
    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f6

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static w(Lcom/alibaba/wukong/im/Message;)J
    .locals 4
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1017
    if-nez p0, :cond_0

    .line 1018
    const-wide/16 v2, 0x0

    .line 1035
    :goto_0
    return-wide v2

    .line 1021
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1022
    const-string/jumbo v2, "oid"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "orgId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1024
    const-string/jumbo v2, "orgId"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    :cond_1
    if-eqz v1, :cond_2

    .line 1028
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1035
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "orgId":Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static x(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 8
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1044
    invoke-static {p0}, Ldkc;->w(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v0

    .line 1045
    .local v0, "orgId":J
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getOrgIdFromMessage msgId="

    aput-object v3, v6, v2

    const/4 v7, 0x1

    if-eqz p0, :cond_0

    .line 1047
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-string/jumbo v3, ", orgId="

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1046
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v4, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1049
    invoke-static {v0, v1}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v2

    .line 1051
    :goto_1
    return-object v2

    .line 1047
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 1051
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static y(Lcom/alibaba/wukong/im/Message;)I
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 1110
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v2, :cond_0

    .line 1111
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 1112
    .local v0, "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1113
    const-string/jumbo v2, "p_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5150
    invoke-static {v2, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1117
    .end local v0    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return v1
.end method

.method public static z(Lcom/alibaba/wukong/im/Message;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 1121
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v3, :cond_1

    .line 1122
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v0

    .line 1123
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1124
    const-string/jumbo v3, "p_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6150
    .local v1, "pid":Ljava/lang/String;
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 1125
    int-to-long v4, v3

    const-wide/16 v6, -0xa

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 1128
    .local v2, "valid":Z
    :cond_0
    if-nez v2, :cond_1

    .line 1130
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "isPraise"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1131
    const/4 v2, 0x1

    .line 1141
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pid":Ljava/lang/String;
    .end local v2    # "valid":Z
    :cond_1
    :goto_0
    return v2

    .line 1132
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "pid":Ljava/lang/String;
    .restart local v2    # "valid":Z
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1134
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "e_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
