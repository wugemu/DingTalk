.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

.field final synthetic val$e2:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->val$e2:Ljava/io/IOException;

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

    const/4 v5, 0x1

    .line 1602
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onRequestFinsh IO_ACCESS_ERROR: "

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->val$e2:Ljava/io/IOException;

    .line 1604
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1603
    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnPlayListener;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver$4;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$AudioRequestReceiver;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$102(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1608
    return-void
.end method
