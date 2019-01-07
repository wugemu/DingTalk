.class public interface abstract Lcom/alibaba/doraemon/utils/MessageUtils$MessageLifeCycleListener;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/utils/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageLifeCycleListener"
.end annotation


# virtual methods
.method public abstract onMessageAfterExe(Landroid/os/Message;)V
.end method

.method public abstract onMessageBeforeExe(Landroid/os/Message;)V
.end method

.method public abstract onMessageRecycled(Landroid/os/Message;)V
.end method

.method public abstract onMessageSend(Landroid/os/Message;)V
.end method
