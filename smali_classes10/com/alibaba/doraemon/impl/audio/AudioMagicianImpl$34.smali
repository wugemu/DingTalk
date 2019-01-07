.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$34;
.super Ljava/util/TimerTask;
.source "AudioMagicianImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->timerShowPragress()V
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
    .line 1278
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$34;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$34;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1200(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V

    .line 1282
    return-void
.end method
