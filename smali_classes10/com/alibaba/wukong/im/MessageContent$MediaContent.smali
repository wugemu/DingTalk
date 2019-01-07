.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$MediaContent;
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
    name = "MediaContent"
.end annotation


# virtual methods
.method public abstract getAuthCode()Ljava/lang/String;
.end method

.method public abstract getAuthUrl()Ljava/lang/String;
.end method

.method public abstract getExtension()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAuthCode(Ljava/lang/String;)V
.end method

.method public abstract setAuthUrl(Ljava/lang/String;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method

.method public abstract size()J
.end method

.method public abstract url()Ljava/lang/String;
.end method
