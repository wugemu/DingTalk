.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$8;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$8;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$8;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$900(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    .line 313
    return-void
.end method
