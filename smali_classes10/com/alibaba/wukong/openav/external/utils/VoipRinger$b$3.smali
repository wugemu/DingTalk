.class final Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$3;
.super Ljava/lang/Object;
.source "VoipRinger.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$3;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "--onCompletion"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$3;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    iget-object v0, v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V

    .line 404
    return-void
.end method
