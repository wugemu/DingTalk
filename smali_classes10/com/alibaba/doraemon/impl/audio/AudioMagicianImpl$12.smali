.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->initOpusRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$600(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 568
    const-wide/16 v6, 0x0

    .line 569
    .local v6, "duration":J
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)J

    move-result-wide v8

    sub-long v6, v0, v8

    .line 572
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x4b0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    .local v3, "allSamples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 574
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 575
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/io/File;

    move-result-object v2

    .line 576
    .local v2, "curRecordFile":Ljava/io/File;
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$702(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/io/File;)Ljava/io/File;

    .line 578
    move-wide v4, v6

    .line 579
    .local v4, "finalDuration":J
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;Ljava/io/File;Ljava/util/ArrayList;J)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method
