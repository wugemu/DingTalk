.class public interface abstract Lcom/alibaba/doraemon/audio/OnPlayListener;
.super Ljava/lang/Object;
.source "OnPlayListener.java"


# static fields
.field public static final DOWNLOAD_RECORD_ERROR:I = 0x4

.field public static final FILE_NOT_EXISTED_ERROR:I = 0x5

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_CALL_RECORD_ERROR:I = 0x3

.field public static final IO_ACCESS_ERROR:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final PLAY_COMPLEMENTED:I = 0x6

.field public static final PLAY_PAUSED:I = 0x3

.field public static final PLAY_RESUMED:I = 0x5

.field public static final PLAY_START:I = 0x1

.field public static final PLAY_STOPED:I = 0x2


# virtual methods
.method public abstract onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPlayStateListener(Ljava/lang/String;I)V
.end method

.method public abstract onProgressListener(Ljava/lang/String;II)V
.end method

.method public abstract onRequestFinsh(Ljava/lang/String;I)V
.end method

.method public abstract onRequestStart(Ljava/lang/String;)V
.end method
