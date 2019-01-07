.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->notifySampleResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field final synthetic val$finalSamplDuration:J

.field final synthetic val$instantSamples:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;JLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iput-wide p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->val$finalSamplDuration:J

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->val$instantSamples:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnRecordListener;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->val$finalSamplDuration:J

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$37;->val$instantSamples:Ljava/util/List;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/audio/OnRecordListener;->notifySampleResult(JLjava/util/List;)V

    .line 1395
    :cond_0
    return-void
.end method
