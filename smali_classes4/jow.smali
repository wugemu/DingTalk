.class public final Ljow;
.super Ljov;
.source "NormalVideoView.java"


# instance fields
.field a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field b:Z

.field c:Z

.field d:Ljov$a;

.field private e:Ljon;

.field private f:Landroid/content/Context;

.field private g:Ljos;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLive"    # Z
    .param p3, "referUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljov;-><init>()V

    .line 26
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljow;->c:Z

    .line 27
    iput-boolean v0, p0, Ljow;->i:Z

    .line 32
    iput-object p1, p0, Ljow;->f:Landroid/content/Context;

    .line 33
    iput-boolean p2, p0, Ljow;->h:Z

    .line 34
    new-instance v2, Ljos;

    const-string/jumbo v3, "AliWeexVideo"

    invoke-direct {v2, v3}, Ljos;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljow;->g:Ljos;

    .line 35
    iget-object v2, p0, Ljow;->g:Ljos;

    iput-object p3, v2, Ljos;->s:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Ljow;->g:Ljos;

    iput v1, v2, Ljos;->c:I

    .line 37
    iget-object v2, p0, Ljow;->g:Ljos;

    iget-boolean v3, p0, Ljow;->h:Z

    if-eqz v3, :cond_0

    :goto_0
    iput v0, v2, Ljos;->b:I

    .line 38
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 39
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Ljow;->g:Ljos;

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 40
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$1;

    invoke-direct {v1, p0}, Ljow$1;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setSurfaceListener(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;)V

    .line 55
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$2;

    invoke-direct {v1, p0}, Ljow$2;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 64
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$3;

    invoke-direct {v1, p0}, Ljow$3;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 74
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$4;

    invoke-direct {v1, p0}, Ljow$4;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 83
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$5;

    invoke-direct {v1, p0}, Ljow$5;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 92
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$6;

    invoke-direct {v1, p0}, Ljow$6;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 116
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    new-instance v1, Ljow$7;

    invoke-direct {v1, p0}, Ljow$7;-><init>(Ljow;)V

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 124
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0
.end method

.method public final a(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 224
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(FF)V

    .line 225
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 229
    iget-boolean v0, p0, Ljow;->h:Z

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final a(Ljov$a;)V
    .locals 0
    .param p1, "listener"    # Ljov$a;

    .prologue
    .line 275
    iput-object p1, p0, Ljow;->d:Ljov$a;

    .line 276
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Ljow;->b:Z

    .line 139
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "scale"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 207
    iget-object v1, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getRenderView()Ljoq;

    move-result-object v0

    .line 208
    .local v0, "renderView":Ljoq;
    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v1, "contain"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljoq;->setAspectRatio(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string/jumbo v1, "cover"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljoq;->setAspectRatio(I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "controls"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    iget-boolean v0, p0, Ljow;->h:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-eqz p1, :cond_3

    .line 152
    iget-object v0, p0, Ljow;->e:Ljon;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Ljon;

    iget-object v1, p0, Ljow;->f:Landroid/content/Context;

    iget-object v2, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v0, v1, v2}, Ljon;-><init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, p0, Ljow;->e:Ljon;

    .line 154
    iget-object v0, p0, Ljow;->e:Ljon;

    invoke-virtual {v0}, Ljon;->b()V

    .line 155
    iget-object v0, p0, Ljow;->e:Ljon;

    new-instance v1, Ljow$8;

    invoke-direct {v1, p0}, Ljow$8;-><init>(Ljow;)V

    .line 1162
    iput-object v1, v0, Ljon;->c:Ljon$a;

    .line 163
    iget-object v0, p0, Ljow;->e:Ljon;

    new-instance v1, Ljow$9;

    invoke-direct {v1, p0}, Ljow$9;-><init>(Ljow;)V

    .line 2158
    iput-object v1, v0, Ljon;->a:Ljon$b;

    .line 177
    :cond_2
    iget-object v0, p0, Ljow;->e:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 178
    iget-object v0, p0, Ljow;->e:Ljon;

    invoke-virtual {v0}, Ljon;->c()V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Ljow;->e:Ljon;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Ljow;->e:Ljon;

    invoke-virtual {v0}, Ljon;->e()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Ljow;->i:Z

    return v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    iget-boolean v0, p0, Ljow;->h:Z

    if-eqz v0, :cond_0

    .line 238
    const-wide/16 v0, 0x0

    .line 240
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Ljow;->i:Z

    .line 189
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setMuted(Z)V

    .line 190
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 199
    iget-boolean v0, p0, Ljow;->h:Z

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLooping(Z)V

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 261
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 266
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 271
    return-void
.end method
