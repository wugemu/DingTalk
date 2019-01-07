.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;
.super Ljava/lang/Object;
.source "AudioMagicianWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

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
    .line 333
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->access$700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->access$300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->access$400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->access$500(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener$1;->this$1:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;->access$600(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 334
    return-void
.end method
