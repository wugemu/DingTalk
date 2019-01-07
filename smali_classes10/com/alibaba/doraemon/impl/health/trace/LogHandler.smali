.class public interface abstract Lcom/alibaba/doraemon/impl/health/trace/LogHandler;
.super Ljava/lang/Object;
.source "LogHandler.java"


# static fields
.field public static final ARG_MAP_MAX_SIZE:I = 0xa

.field public static final KEY_SEPARATOR:Ljava/lang/String; = ","

.field public static final MAP_MAX_SIZE:I = 0x64

.field public static final MESSAGE_DELAY:I = 0xea60

.field public static final MESSAGE_TYPE_FLUSH:I = 0x198333


# virtual methods
.method public abstract aggregateData(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract flushData()V
.end method

.method public abstract saveToTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method
