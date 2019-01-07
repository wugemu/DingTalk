.class public abstract Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;
.super Ljava/lang/Object;
.source "BaseOpusPlayer.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;


# instance fields
.field private mOnCompletionListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnCompletionListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnCompletionListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    return-object v0
.end method

.method public getOnErrorlistener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

    return-object v0
.end method

.method public getOnPreparedListener()Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;

    return-object v0
.end method

.method public setOnCompletionListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnCompletionListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;

    .line 21
    return-void
.end method

.method public setOnErrorListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;

    .line 16
    return-void
.end method

.method public setOnPreparedListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;->mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;

    .line 26
    return-void
.end method
