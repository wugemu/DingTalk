.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->play(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$milliseconds:I


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iput-object p2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->val$milliseconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->val$filePath:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;->val$milliseconds:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$000(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;I)V

    .line 66
    return-void
.end method
