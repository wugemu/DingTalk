.class public final Lecg$4;
.super Ljava/lang/Object;
.source "FullScreenVoiceRecordDialog.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lecg;


# direct methods
.method public constructor <init>(Lecg;)V
    .locals 0
    .param p1, "this$0"    # Lecg;

    .prologue
    .line 369
    iput-object p1, p0, Lecg$4;->a:Lecg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySampleResult(JLjava/util/List;)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 430
    .local v0, "seconds":I
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1}, Lecg;->b(Lecg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1, v0}, Lecg;->b(Lecg;I)V

    .line 432
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1, p3}, Lecg;->b(Lecg;Ljava/util/List;)V

    .line 435
    :cond_0
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1}, Lecg;->b(Lecg;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lecg$4;->a:Lecg;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lecg;->b(Lecg;Z)Z

    .line 437
    iget-object v1, p0, Lecg$4;->a:Lecg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lecg;->c(Lecg;I)I

    .line 438
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1}, Lecg;->m(Lecg;)Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->stopRecord()V

    .line 439
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-virtual {v1}, Lecg;->dismiss()V

    .line 441
    :cond_1
    return-void
.end method

.method public final onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v6, 0x3c

    const/4 v4, 0x0

    .line 387
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3, v4}, Lecg;->b(Lecg;Z)Z

    .line 388
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->g(Lecg;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->h(Lecg;)V

    .line 390
    iget-object v3, p0, Lecg$4;->a:Lecg;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lecg;->a(Lecg;Ljava/io/File;)Ljava/io/File;

    .line 391
    iget-object v3, p0, Lecg$4;->a:Lecg;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v5}, Lecg;->a(Lecg;Ljava/util/List;)Ljava/util/List;

    .line 392
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/Integer;

    .line 394
    .local v1, "sampleArray":[Ljava/lang/Integer;
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v3, v6}, Lctd;->a([Ljava/lang/Integer;I)[I

    move-result-object v2

    .line 395
    .local v2, "samples":[I
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, v2, v3

    .line 396
    .local v0, "sample":I
    iget-object v6, p0, Lecg$4;->a:Lecg;

    invoke-static {v6}, Lecg;->i(Lecg;)Ljava/util/List;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "sample":I
    .end local v1    # "sampleArray":[Ljava/lang/Integer;
    .end local v2    # "samples":[I
    :cond_0
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->i(Lecg;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_1
    iget-object v3, p0, Lecg$4;->a:Lecg;

    const-wide/16 v6, 0x3e8

    div-long v6, p3, v6

    long-to-int v5, v6

    invoke-static {v3, v5}, Lecg;->a(Lecg;I)I

    .line 403
    iget-object v3, p0, Lecg$4;->a:Lecg;

    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->j(Lecg;)I

    move-result v5

    invoke-static {v3, v5}, Lecg;->b(Lecg;I)V

    .line 404
    iget-object v3, p0, Lecg$4;->a:Lecg;

    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->i(Lecg;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lecg;->b(Lecg;Ljava/util/List;)V

    .line 406
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->k(Lecg;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 407
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->j(Lecg;)I

    move-result v3

    if-gtz v3, :cond_3

    .line 408
    sget v3, Lctk$i;->message_voice_short:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 409
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    .line 2211
    iget-object v3, v3, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 410
    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->j(Lecg;)I

    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->l(Lecg;)Ljava/io/File;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(Ljava/io/File;)V

    .line 423
    :cond_2
    :goto_1
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3, v4}, Lecg;->a(Lecg;Z)Z

    .line 424
    return-void

    .line 413
    :cond_3
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    .line 3211
    iget-object v3, v3, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 414
    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->j(Lecg;)I

    move-result v5

    iget-object v6, p0, Lecg$4;->a:Lecg;

    invoke-static {v6}, Lecg;->l(Lecg;)Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lecg$4;->a:Lecg;

    invoke-static {v7}, Lecg;->i(Lecg;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(ILjava/io/File;Ljava/util/List;)V

    goto :goto_1

    .line 418
    :cond_4
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 419
    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v3

    .line 4211
    iget-object v3, v3, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 419
    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->j(Lecg;)I

    iget-object v5, p0, Lecg$4;->a:Lecg;

    invoke-static {v5}, Lecg;->l(Lecg;)Ljava/io/File;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(Ljava/io/File;)V

    goto :goto_1
.end method

.method public final onRecordErrorListener(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0, v2}, Lecg;->b(Lecg;Z)Z

    .line 446
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 447
    sget v0, Lctk$i;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 456
    :cond_0
    :goto_0
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->g(Lecg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->h(Lecg;)V

    .line 458
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->l(Lecg;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v0

    .line 5211
    iget-object v0, v0, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 460
    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1}, Lecg;->j(Lecg;)I

    iget-object v1, p0, Lecg$4;->a:Lecg;

    invoke-static {v1}, Lecg;->l(Lecg;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(Ljava/io/File;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-virtual {v0}, Lecg;->dismiss()V

    .line 465
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0, v2}, Lecg;->a(Lecg;Z)Z

    .line 467
    return-void

    .line 448
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 449
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 450
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    :cond_3
    sget v0, Lctk$i;->dt_live_audio_in_focused:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 453
    :cond_4
    sget v0, Lctk$i;->record_access_denied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onRecordStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 372
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->b(Lecg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lecg$4;->a:Lecg;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lecg;->a(Lecg;Ljava/io/File;)Ljava/io/File;

    .line 374
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0, v4}, Lecg;->a(Lecg;Z)Z

    .line 375
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->d(Lecg;)V

    .line 376
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    new-instance v1, Lciu$a;

    invoke-static {}, Lecg;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lecg$4;->a:Lecg;

    invoke-static {v3}, Lecg;->e(Lecg;)Lciu$b;

    move-result-object v3

    invoke-direct {v1, v2, v4, v4, v3}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    invoke-virtual {v0, v1}, Lciu;->a(Lciu$a;)Z

    .line 377
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->f(Lecg;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 379
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lecg$4;->a:Lecg;

    invoke-static {v0}, Lecg;->c(Lecg;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P()Ldjb;

    move-result-object v0

    .line 1211
    iget-object v0, v0, Ldjb;->j:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    .line 380
    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;->a(Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method
