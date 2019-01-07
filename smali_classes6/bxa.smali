.class public final Lbxa;
.super Ljava/lang/Object;
.source "PlayerListeners.java"


# instance fields
.field public a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

.field public b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

.field public c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field public d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field public e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field public f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field public g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbwz;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field j:Z

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbxa;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lbxa;)V
    .locals 3
    .param p0, "x0"    # Lbxa;

    .prologue
    .line 23
    .line 1217
    iget-boolean v0, p0, Lbxa;->i:Z

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbxa;->i:Z

    .line 1219
    new-instance v0, Lbun;

    invoke-direct {v0}, Lbun;-><init>()V

    .line 1220
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 2043
    iget-object v1, v1, Lbwr;->c:Ljava/lang/String;

    .line 1220
    iput-object v1, v0, Lbun;->a:Ljava/lang/String;

    .line 1221
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbun;->b:Ljava/lang/String;

    .line 1222
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbun;->c:Ljava/lang/Integer;

    .line 1223
    iget-object v1, p0, Lbxa;->k:Ljava/lang/String;

    iput-object v1, v0, Lbun;->d:Ljava/lang/String;

    .line 1224
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lbun;Lcom/alibaba/wukong/Callback;)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Lbxa$1;

    invoke-direct {v0, p0}, Lbxa$1;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    .line 90
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Lbxa$2;

    invoke-direct {v0, p0}, Lbxa$2;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    .line 107
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 109
    :cond_3
    iget-object v0, p0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-nez v0, :cond_4

    .line 110
    new-instance v0, Lbxa$3;

    invoke-direct {v0, p0}, Lbxa$3;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 116
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->c:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-nez v0, :cond_5

    .line 119
    new-instance v0, Lbxa$4;

    invoke-direct {v0, p0}, Lbxa$4;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 131
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 133
    :cond_5
    iget-object v0, p0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-nez v0, :cond_6

    .line 134
    new-instance v0, Lbxa$5;

    invoke-direct {v0, p0}, Lbxa$5;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 144
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 146
    :cond_6
    iget-object v0, p0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lbxa$6;

    invoke-direct {v0, p0}, Lbxa$6;-><init>(Lbxa;)V

    iput-object v0, p0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 166
    iget-object v0, p0, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lbxa;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    goto :goto_0
.end method
