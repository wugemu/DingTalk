.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->onError(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iput p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->val$what:I

    iput p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->val$extra:I

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

    const/4 v5, 0x3

    .line 1115
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "OpusPlayer error type: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->val$what:I

    .line 1118
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " extra-code:"

    aput-object v4, v2, v3

    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->val$extra:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$002(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Lcom/alibaba/doraemon/audio/OnPlayListener;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$29;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0, v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$102(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    return-void
.end method
