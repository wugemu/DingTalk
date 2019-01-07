.class public abstract Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# instance fields
.field protected mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field protected mOnBufferingUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field protected mOnCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field protected mOnErrorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field protected mOnInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnLoopCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field protected mOnPreparedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

.field protected mOnSeekCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field protected mOnVideoSizeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 121
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    .line 124
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    return-void
.end method

.method public registerOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 65
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    return-void
.end method

.method public registerOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 162
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    .line 165
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    return-void
.end method

.method public registerOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 182
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    .line 185
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_1
    return-void
.end method

.method public registerOnLoopCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;

    .prologue
    .line 100
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    .line 103
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    return-void
.end method

.method public final registerOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 45
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method

.method public registerOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .prologue
    .line 85
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    return-void
.end method

.method public registerOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 142
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    .line 145
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 198
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 199
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 200
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .line 201
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 202
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 203
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 204
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    :cond_4
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    :cond_5
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 223
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    :cond_6
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    :cond_7
    return-void
.end method

.method public final setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 118
    return-void
.end method

.method public final setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 62
    return-void
.end method

.method public final setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 159
    return-void
.end method

.method public final setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 179
    return-void
.end method

.method public final setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 42
    return-void
.end method

.method public final setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .line 82
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 139
    return-void
.end method

.method public unregisterOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 130
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method

.method public unregisterOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 74
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public unregisterOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 171
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public unregisterOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 191
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-void
.end method

.method public unregisterOnLoopCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;

    .prologue
    .line 109
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public unregisterOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 54
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public unregisterOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .prologue
    .line 94
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public unregisterOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 151
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method
