.class public interface abstract Lcom/alibaba/doraemon/image/memory/Pool;
.super Ljava/lang/Object;
.source "Pool.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;
.implements Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;",
        "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
        "<TV;>;"
    }
.end annotation


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public abstract getWhenHardCapReached(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public abstract release(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
