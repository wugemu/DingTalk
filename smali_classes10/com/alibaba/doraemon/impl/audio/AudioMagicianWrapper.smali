.class public Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;
.super Ljava/lang/Object;
.source "AudioMagicianWrapper.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/AudioMagicianEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

.field private mActualUrl:Ljava/lang/String;

.field private mExposedUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTargetPosition:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->canDeliverResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->resetUrlInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mTargetPosition:I

    return v0
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canDeliverResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resultUrl"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private resetUrlInfo()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    .line 348
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mTargetPosition:I

    .line 350
    return-void
.end method


# virtual methods
.method public clearDiskCache()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->clearDiskCache()Z

    move-result v0

    return v0
.end method

.method public getDiskCacheSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->getDiskCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAudioCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->hasAudioCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->isSameUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->pause(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/doraemon/audio/OnPlayListener;

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;)V

    .line 44
    return-void
.end method

.method public play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/doraemon/audio/OnPlayListener;
    .param p3, "requestParams"    # Ljava/util/Map;
    .param p4, "requestHeaders"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public preDownloadAudio(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->preDownloadAudio(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public preDownloadAudio(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestParams"    # Ljava/util/Map;
    .param p3, "requestHeaders"    # Ljava/util/Map;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->preDownloadAudio(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 147
    return-void
.end method

.method public record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->resetUrlInfo()V

    .line 161
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordCommon(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->resetUrlInfo()V

    .line 168
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->recordCommon(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAudioCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->removeAudioCache(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public removeAudioCacheAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->removeAudioCacheAsync(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->isSameUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->resume(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/alibaba/doraemon/audio/OnPlayListener;
    .param p4, "requestParams"    # Ljava/util/Map;
    .param p5, "requestHeaders"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 85
    :cond_0
    iput p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mTargetPosition:I

    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->isSameUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    invoke-static {p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseCustomMediaType(Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v6, v10, p2, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;)V

    goto :goto_0

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mExposedUrl:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->isLocalFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 98
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 99
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseCustomMediaType(Ljava/lang/String;)Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v6

    move-object v2, v10

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object/from16 v6, p5

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v0, "AUDIOCACHE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/cache/Cache;

    .line 104
    .local v7, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->canPlayWithOpus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "opusFileUrl":Ljava/lang/String;
    invoke-interface {v7, v9}, Lcom/alibaba/doraemon/cache/Cache;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iput-object v9, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 108
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v6

    move-object v2, v10

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 115
    .end local v9    # "opusFileUrl":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "commonFileUrl":Ljava/lang/String;
    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/cache/Cache;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iput-object v8, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 118
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v6

    move-object v2, v10

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 124
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->canPlayWithOpus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v6

    move-object v2, v10

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 130
    :cond_5
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper$MyOnPlayListener;-><init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;Lcom/alibaba/doraemon/audio/OnPlayListener;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v6

    move-object v2, v10

    move v3, p2

    move-object v4, v0

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public setAudioSource(I)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->setAudioSource(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    return-object v0
.end method

.method public setRecordParams(II)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p1, "bitRate"    # I
    .param p2, "outputFormat"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->setRecordParams(II)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    return-object v0
.end method

.method public setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p1, "sampleCounts"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    return-object v0
.end method

.method public setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p1, "converter"    # Lcom/alibaba/doraemon/audio/SampleConverter;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    return-object v0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->isSameUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mActualUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->stop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->resetUrlInfo()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->stopRecord()V

    .line 176
    return-void
.end method

.method public update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V

    .line 206
    return-void
.end method

.method public update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "customMediaType"    # Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {p2, p3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update2RemoteUrl([BLjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->update2RemoteUrl([BLjava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V

    .line 220
    return-void
.end method

.method public update2RemoteUrl([BLjava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "customMediaType"    # Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {p2, p3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianHelper;->parseToCustomUrl(Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->update2RemoteUrl([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public update2RemoteUrlWithNoDel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;->audioMagicianImpl:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->update2RemoteUrlWithNoDel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
