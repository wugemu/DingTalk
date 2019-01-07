.class final Ldjb$2;
.super Ljava/lang/Object;
.source "ChatVoiceController.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;


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


# direct methods
.method constructor <init>(Ldjb;)V
    .locals 0
    .param p1, "this$0"    # Ldjb;

    .prologue
    .line 215
    iput-object p1, p0, Ldjb$2;->a:Ldjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v0}, Ldjb;->k(Ldjb;)Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->c()V

    .line 245
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 246
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ldjb;->a(Ldjb;J)J

    .line 247
    return-void
.end method

.method public final a(ILjava/io/File;Ljava/util/List;)V
    .locals 10
    .param p1, "duration"    # I
    .param p2, "audioFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "sampleData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 260
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setRecordListener(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;)V

    .line 263
    if-gtz p1, :cond_1

    .line 264
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    .line 267
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->m(Ldjb;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    :cond_2
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    .line 275
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->m(Ldjb;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 280
    .local v0, "now":J
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->n(Ldjb;)J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_7

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sending(\u4f1a\u8bdd\u5217\u8868\uff0d\u804a\u5929\u754c\u9762) start :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2, v0, v1}, Ldjb;->b(Ldjb;J)J

    .line 288
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 289
    sget v2, Lctk$i;->record_access_denied:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 290
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 291
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "ChatVoiceController onVoiceRecordFinish file not valid"

    invoke-static {v2, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_4
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->m(Ldjb;)V

    goto :goto_0

    .line 295
    :cond_5
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->e(Ldjb;)V

    .line 298
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->i(Ldjb;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 299
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5, p3}, Ldiz;->a(Ljava/lang/String;JLjava/util/List;)Z

    goto/16 :goto_0

    .line 303
    :cond_6
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v2

    int-to-long v4, p1

    mul-long/2addr v4, v8

    invoke-interface {v2, v4, v5, p3}, Lcom/alibaba/wukong/im/AudioStreamController;->finish(JLjava/util/List;)V

    .line 305
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2, v6}, Ldjb;->a(Ldjb;Lcom/alibaba/wukong/im/AudioStreamController;)Lcom/alibaba/wukong/im/AudioStreamController;

    goto/16 :goto_0

    .line 311
    :cond_7
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "ChatVoiceController reSend duplicate cancel it "

    invoke-static {v2, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v2}, Ldjb;->m(Ldjb;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 3
    .param p1, "audioFile"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v0}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setRecordListener(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;)V

    .line 324
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v0}, Ldjb;->m(Ldjb;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 329
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatVoiceController onVoiceRecordCancel delete file "

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 219
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->g(Ldjb;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 221
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->getAudioStreamController()Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v2

    invoke-static {v1, v2}, Ldjb;->a(Ldjb;Lcom/alibaba/wukong/im/AudioStreamController;)Lcom/alibaba/wukong/im/AudioStreamController;

    .line 222
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v1

    .line 2447
    invoke-virtual {v1, v0, v3, p1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 238
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->i(Ldjb;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldjb;->a(Ldjb;Lcom/alibaba/wukong/im/AudioStreamController;)Lcom/alibaba/wukong/im/AudioStreamController;

    goto :goto_0

    .line 229
    :cond_2
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 230
    .restart local v0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->j(Ldjb;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v0, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 233
    :cond_3
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->getAudioStreamController()Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v2

    invoke-static {v1, v2}, Ldjb;->a(Ldjb;Lcom/alibaba/wukong/im/AudioStreamController;)Lcom/alibaba/wukong/im/AudioStreamController;

    .line 234
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v1}, Ldjb;->h(Ldjb;)Ldiz;

    move-result-object v1

    .line 3443
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v0}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Ldjb$2;->a:Ldjb;

    invoke-static {v0}, Ldjb;->l(Ldjb;)Lcom/alibaba/wukong/im/AudioStreamController;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/AudioStreamController;->cancel()V

    .line 256
    :cond_0
    return-void
.end method
