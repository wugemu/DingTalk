.class public interface abstract Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListener;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateListener"
.end annotation


# virtual methods
.method public abstract onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract onChildNodeInserted(Lcom/taobao/weex/devtools/inspector/elements/DocumentView;Ljava/lang/Object;IILcom/taobao/weex/devtools/common/Accumulator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/inspector/elements/DocumentView;",
            "Ljava/lang/Object;",
            "II",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChildNodeRemoved(II)V
.end method

.method public abstract onInspectRequested(Ljava/lang/Object;)V
.end method
