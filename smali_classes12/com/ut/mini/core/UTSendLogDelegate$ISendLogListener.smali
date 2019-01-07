.class public interface abstract Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;
.super Ljava/lang/Object;
.source "UTSendLogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/core/UTSendLogDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISendLogListener"
.end annotation


# virtual methods
.method public abstract onLogArrived(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
