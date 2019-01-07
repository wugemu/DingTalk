.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiMessageContent"
.end annotation


# virtual methods
.method public abstract add(Lcom/alibaba/wukong/im/MessageContent;)V
.end method

.method public abstract contents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/alibaba/wukong/im/MessageContent;)V
.end method

.method public abstract size()I
.end method
