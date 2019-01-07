.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$EncryptContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncryptAudioContent"
.end annotation


# virtual methods
.method public abstract duration()J
.end method

.method public abstract volumns()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
