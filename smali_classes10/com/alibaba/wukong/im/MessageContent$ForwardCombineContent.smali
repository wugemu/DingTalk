.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
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
    name = "ForwardCombineContent"
.end annotation


# virtual methods
.method public abstract contents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract summary()Ljava/lang/String;
.end method

.method public abstract title()Ljava/lang/String;
.end method
