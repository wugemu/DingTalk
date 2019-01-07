.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$FileContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncryptContent"
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
.end method

.method public abstract fileId()Ljava/lang/String;
.end method

.method public abstract isEncrypt()Z
.end method

.method public abstract orgId()J
.end method

.method public abstract priority()I
.end method

.method public abstract setEncryptFileInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract spaceId()Ljava/lang/String;
.end method
