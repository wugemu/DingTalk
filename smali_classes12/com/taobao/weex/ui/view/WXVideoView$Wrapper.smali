.class public Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;
.super Landroid/widget/FrameLayout;
.source "WXVideoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private mMediaController:Landroid/widget/MediaController;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUri:Landroid/net/Uri;

.field private mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

.field private mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->init(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method private declared-synchronized createVideoView()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 251
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-direct {v2, v0}, Lcom/taobao/weex/ui/view/WXVideoView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v2, "video":Lcom/taobao/weex/ui/view/WXVideoView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v3, "videoLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/WXVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->addView(Landroid/view/View;I)V

    .line 236
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 237
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 238
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 239
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 240
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, "controller":Landroid/widget/MediaController;
    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/WXVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 243
    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 245
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mMediaController:Landroid/widget/MediaController;

    .line 246
    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    .line 248
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "controller":Landroid/widget/MediaController;
    .end local v2    # "video":Lcom/taobao/weex/ui/view/WXVideoView;
    .end local v3    # "videoLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 122
    const-string/jumbo v1, "#ee000000"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setBackgroundColor(I)V

    .line 123
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v0, "pLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    return-void
.end method

.method private removeSelfFromViewTreeObserver()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoView()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    return-object v0
.end method

.method public createVideoViewIfVisible()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 265
    .local v0, "visibleRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v2, :cond_0

    .line 271
    :goto_0
    return v1

    .line 267
    :cond_0
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoView()V

    goto :goto_0

    .line 271
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaController()Landroid/widget/MediaController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->removeSelfFromViewTreeObserver()V

    .line 279
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->pause()V

    .line 181
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->resume()V

    .line 193
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 204
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoPlayListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mUri:Landroid/net/Uri;

    .line 166
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 169
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->start()V

    .line 175
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->mVideoView:Lcom/taobao/weex/ui/view/WXVideoView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView;->stopPlayback()V

    .line 187
    :cond_0
    return-void
.end method
