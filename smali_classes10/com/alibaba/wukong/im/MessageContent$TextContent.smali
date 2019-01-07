.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$TextContent;
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
    name = "TextContent"
.end annotation


# virtual methods
.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract templateData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract templateId()Ljava/lang/String;
.end method

.method public abstract text()Ljava/lang/String;
.end method
