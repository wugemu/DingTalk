.class final Ljow$3;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljow;


# direct methods
.method constructor <init>(Ljow;)V
    .locals 0
    .param p1, "this$0"    # Ljow;

    .prologue
    .line 64
    iput-object p1, p0, Ljow$3;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Ljow$3;->a:Ljow;

    .line 1017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Ljow$3;->a:Ljow;

    .line 2017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 68
    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Ljov$a;->a(J)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
