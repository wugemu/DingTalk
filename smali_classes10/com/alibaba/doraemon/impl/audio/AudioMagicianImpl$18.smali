.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->update2RemoteUrl([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field final synthetic val$bytes:[B

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;->val$bytes:[B

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
    .line 853
    const-string/jumbo v1, "AUDIOCACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    .line 854
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$18;->val$bytes:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 855
    return-void
.end method
