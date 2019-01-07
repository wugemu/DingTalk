.class public Lcom/alibaba/doraemon/impl/audio/AudioMagicianExFetcher;
.super Ljava/lang/Object;
.source "AudioMagicianExFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mAudioMagician:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianExFetcher;->mAudioMagician:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianExFetcher;->mAudioMagician:Lcom/alibaba/doraemon/impl/audio/AudioMagicianWrapper;

    .line 19
    return-void
.end method
