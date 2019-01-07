.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RobotMarkdownIconExContent"
.end annotation


# virtual methods
.method public abstract enhancedExtension()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract nickMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;"
        }
    .end annotation
.end method
