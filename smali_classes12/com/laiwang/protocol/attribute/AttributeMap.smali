.class public interface abstract Lcom/laiwang/protocol/attribute/AttributeMap;
.super Ljava/lang/Object;
.source "AttributeMap.java"


# virtual methods
.method public abstract attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;)",
            "Lcom/laiwang/protocol/attribute/Attribute",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getAndRemove(Lcom/laiwang/protocol/attribute/AttributeKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/laiwang/protocol/attribute/AttributeKey",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z
.end method
