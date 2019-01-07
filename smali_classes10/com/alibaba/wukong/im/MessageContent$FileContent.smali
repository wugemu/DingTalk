.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$FileContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$MediaContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileContent"
.end annotation


# virtual methods
.method public abstract fileName()Ljava/lang/String;
.end method

.method public abstract fileType()Ljava/lang/String;
.end method
