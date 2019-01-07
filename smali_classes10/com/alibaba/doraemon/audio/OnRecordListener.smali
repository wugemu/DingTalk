.class public interface abstract Lcom/alibaba/doraemon/audio/OnRecordListener;
.super Ljava/lang/Object;
.source "OnRecordListener.java"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_RECORD_ERROR:I = 0x3

.field public static final IO_ACCESS_ERROR:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final RECORD_COMPLEMENTED:I = 0x2

.field public static final RECORD_START:I = 0x1


# virtual methods
.method public abstract notifySampleResult(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onRecordErrorListener(ILjava/lang/String;)V
.end method

.method public abstract onRecordStart(Ljava/lang/String;)V
.end method
