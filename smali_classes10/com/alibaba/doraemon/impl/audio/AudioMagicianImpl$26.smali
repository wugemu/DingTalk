.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->playByCommonPlayer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1042
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 1043
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "INTERNAL_ERROR: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->val$e:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnPlayListener;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$26;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$102(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1048
    return-void
.end method
