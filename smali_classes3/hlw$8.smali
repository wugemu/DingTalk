.class final Lhlw$8;
.super Ljava/lang/Object;
.source "MiniEmbedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlw;


# direct methods
.method constructor <init>(Lhlw;)V
    .locals 0
    .param p1, "this$0"    # Lhlw;

    .prologue
    .line 297
    iput-object p1, p0, Lhlw$8;->a:Lhlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 4
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # J
    .param p4, "l1"    # J
    .param p6, "l2"    # J
    .param p8, "o"    # Ljava/lang/Object;

    .prologue
    .line 299
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lhlw$8;->a:Lhlw;

    const-string/jumbo v1, "nbcomponent.video.bindwaiting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lhlw;->a(Lhlw;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
    .end packed-switch
.end method
