.class public interface abstract Lcom/alibaba/doraemon/audio/AudioMagician;
.super Ljava/lang/Object;
.source "AudioMagician.java"


# static fields
.field public static final AUDIO_ARTIFACT:Ljava/lang/String; = "AUDIO"


# virtual methods
.method public abstract clearDiskCache()Z
.end method

.method public abstract getDiskCacheSize()J
.end method

.method public abstract hasAudioCache(Ljava/lang/String;)Z
.end method

.method public abstract pause(Ljava/lang/String;)V
.end method

.method public abstract play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
.end method

.method public abstract play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V
.end method

.method public abstract preDownloadAudio(Ljava/lang/String;)V
.end method

.method public abstract preDownloadAudio(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end method

.method public abstract record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
.end method

.method public abstract recordCommon(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;
.end method

.method public abstract removeAudioCache(Ljava/lang/String;)V
.end method

.method public abstract removeAudioCacheAsync(Ljava/lang/String;)V
.end method

.method public abstract resume(Ljava/lang/String;)V
.end method

.method public abstract seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;)V
.end method

.method public abstract seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V
.end method

.method public abstract setAudioSource(I)Lcom/alibaba/doraemon/audio/AudioMagician;
.end method

.method public abstract setRecordParams(II)Lcom/alibaba/doraemon/audio/AudioMagician;
.end method

.method public abstract setRecordSampleCounts(I)Lcom/alibaba/doraemon/audio/AudioMagician;
.end method

.method public abstract setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;
.end method

.method public abstract stop(Ljava/lang/String;)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract update2RemoteUrl([BLjava/lang/String;)V
.end method

.method public abstract update2RemoteUrlWithNoDel(Ljava/lang/String;Ljava/lang/String;)V
.end method
