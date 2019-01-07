.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

.field final synthetic val$allSamples:Ljava/util/ArrayList;

.field final synthetic val$curRecordFile:Ljava/io/File;

.field final synthetic val$finalDuration:J


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;Ljava/io/File;Ljava/util/ArrayList;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$curRecordFile:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$allSamples:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$finalDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$curRecordFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$curRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$allSamples:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->val$finalDuration:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V

    .line 585
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$502(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnRecordListener;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    .line 586
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$12;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$702(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/io/File;)Ljava/io/File;

    .line 589
    :cond_0
    return-void
.end method
