.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->stopCommonRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field final synthetic val$allSamples:Ljava/util/ArrayList;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->val$allSamples:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->val$duration:J

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

    .line 687
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->val$allSamples:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->val$duration:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V

    .line 690
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$502(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnRecordListener;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    .line 691
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$15;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$702(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/io/File;)Ljava/io/File;

    .line 693
    :cond_0
    return-void
.end method
