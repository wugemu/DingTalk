.class public interface abstract Lcom/alibaba/doraemon/audio/AudioMagicianEx;
.super Ljava/lang/Object;
.source "AudioMagicianEx.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/AudioMagician;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;
    }
.end annotation


# static fields
.field public static final AUDIOEX_ARTIFACT:Ljava/lang/String; = "AUDIOEX"

.field public static final COMMON_FILE_SUFFIX:Ljava/lang/String; = "amr"

.field public static final OPUS_OGG_FILE_SUFFIX:Ljava/lang/String; = "ogg"


# virtual methods
.method public abstract update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
.end method

.method public abstract update2RemoteUrl([BLjava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
.end method
