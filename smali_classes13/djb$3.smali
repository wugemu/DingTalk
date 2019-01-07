.class final Ldjb$3;
.super Lcti;
.source "ChatVoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjb;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Ldjb;)V
    .locals 1
    .param p1, "this$0"    # Ldjb;

    .prologue
    .line 350
    iput-object p1, p0, Ldjb$3;->a:Ldjb;

    invoke-direct {p0}, Lcti;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Ldjb$3;->b:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    iget-object v7, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v7}, Ldjb;->p(Ldjb;)Lcug;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Ldjb$3;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 453
    iget-object v7, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v7}, Ldjb;->p(Ldjb;)Lcug;

    move-result-object v7

    invoke-virtual {v7}, Lcug;->c()Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "chatsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 455
    iget-object v7, p0, Ldjb$3;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 456
    .local v2, "currentId":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 457
    .local v4, "msg":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-nez v8, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 458
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 459
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v8

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    invoke-virtual {v8, v4, v10, v11}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;J)Ldjz$a;

    move-result-object v5

    .line 461
    .local v5, "timer":Ldjz$a;
    iget-object v8, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v8}, Ldjb;->p(Ldjb;)Lcug;

    move-result-object v8

    .line 3407
    iget-object v1, v8, Lcug;->i:Ljava/util/Map;

    .line 462
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcts;>;"
    if-eqz v1, :cond_0

    .line 463
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcts;

    .line 464
    .local v6, "viewHolder":Lcts;
    if-eqz v6, :cond_0

    .line 465
    invoke-virtual {v6, v5}, Lcts;->a(Ldjz$a;)V

    goto :goto_0

    .line 472
    .end local v0    # "chatsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcts;>;"
    .end local v2    # "currentId":J
    .end local v4    # "msg":Lcom/alibaba/wukong/im/Message;
    .end local v5    # "timer":Ldjz$a;
    .end local v6    # "viewHolder":Lcts;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 363
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v5}, Ldjb;->d()V

    .line 364
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7}, Ldjb;->a(Ldjb;J)J

    .line 365
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v5}, Ldjb;->o(Ldjb;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 366
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    .line 1653
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1658
    iget-object v6, v5, Ldjb;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v6

    iput-object v6, v5, Ldjb;->c:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 1659
    iget-object v6, v5, Ldjb;->c:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    if-ne v6, v7, :cond_4

    .line 1660
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v6, v5, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 1661
    iget-object v5, v5, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a()V

    .line 368
    :cond_0
    :goto_0
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 369
    check-cast p1, Ljava/lang/String;

    .end local p1    # "id":Ljava/lang/Object;
    iput-object p1, p0, Ldjb$3;->b:Ljava/lang/String;

    .line 371
    :cond_1
    const-string/jumbo v5, "im"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voice start msgId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ldjb$3;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v5}, Ldjb;->p(Ldjb;)Lcug;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ldjb$3;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 373
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v5}, Ldjb;->p(Ldjb;)Lcug;

    move-result-object v5

    invoke-virtual {v5}, Lcug;->c()Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, "chatsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const-string/jumbo v6, "im"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "voice start chatListSize:"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v10, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 376
    iget-object v5, p0, Ldjb$3;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 377
    .local v2, "currentId":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 378
    .local v4, "msg":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 379
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 380
    const-string/jumbo v5, "im"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voice start msgId hit:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v5

    iput-boolean v5, p0, Ldjb$3;->c:Z

    .line 382
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v5}, Ldjb;->j(Ldjb;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 383
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_im_v_local_read_instantly"

    invoke-virtual {v5, v6}, Lchx;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 384
    const-string/jumbo v5, "im"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voice start msgId hit read force:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Message;->read(Z)V

    .line 394
    :goto_2
    iget-object v5, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v5}, Ldjb;->j(Ldjb;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "readTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-interface {v4, v1}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 406
    .end local v0    # "chatsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "currentId":J
    .end local v4    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_3
    return-void

    .line 1663
    .restart local p1    # "id":Ljava/lang/Object;
    :cond_4
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    iput-object v6, v5, Ldjb;->e:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 1664
    iget-object v5, v5, Ldjb;->b:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b()V

    goto/16 :goto_0

    .line 374
    .end local p1    # "id":Ljava/lang/Object;
    .restart local v0    # "chatsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 387
    .restart local v2    # "currentId":J
    .restart local v4    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_6
    const-string/jumbo v5, "im"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voice start msgId hit read:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->read()V

    goto :goto_2

    .line 391
    :cond_7
    const-string/jumbo v5, "im"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "voice start msgId burnchat hit read:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->read()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v0}, Ldjb;->q(Ldjb;)V

    .line 430
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v0}, Ldjb;->c()V

    .line 431
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ldjb;->a(Ldjb;J)J

    .line 432
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 410
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v0}, Ldjb;->d()V

    .line 411
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 415
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v0}, Ldjb;->q(Ldjb;)V

    .line 416
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v0}, Ldjb;->c()V

    .line 417
    invoke-direct {p0}, Ldjb$3;->a()V

    .line 418
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 422
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v0}, Ldjb;->q(Ldjb;)V

    .line 423
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v0}, Ldjb;->c()V

    .line 424
    invoke-direct {p0}, Ldjb$3;->a()V

    .line 425
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    :try_start_0
    invoke-direct {p0}, Ldjb$3;->a()V

    .line 439
    iget-object v1, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v1}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v1

    .line 2610
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->k:Z

    .line 439
    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Ldjb$3;->a:Ldjb;

    iget-object v2, p0, Ldjb$3;->b:Ljava/lang/String;

    iget-boolean v3, p0, Ldjb$3;->c:Z

    invoke-static {v1, v2, v3}, Ldjb;->a(Ldjb;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v1}, Ldjb;->q(Ldjb;)V

    .line 444
    iget-object v1, p0, Ldjb$3;->a:Ldjb;

    invoke-virtual {v1}, Ldjb;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Ldjb;->g()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Ldjb$3;->a:Ldjb;

    invoke-static {v0}, Ldjb;->c(Ldjb;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    return-object v0
.end method
