.class public interface abstract Lcom/alibaba/doraemon/audio/opus/IOpusPlayer;
.super Ljava/lang/Object;
.source "IOpusPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;,
        Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;,
        Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayPath()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play(Ljava/lang/String;)V
.end method

.method public abstract play(Ljava/lang/String;I)V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setOnCompletionListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnErrorListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/alibaba/doraemon/audio/opus/IOpusPlayer$OnPreparedListener;)V
.end method

.method public abstract stop()V
.end method
