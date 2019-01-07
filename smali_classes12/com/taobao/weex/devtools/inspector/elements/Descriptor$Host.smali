.class public interface abstract Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/ThreadBound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation


# virtual methods
.method public abstract getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
.end method
