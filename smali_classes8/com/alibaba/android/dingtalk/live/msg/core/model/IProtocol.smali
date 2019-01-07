.class public interface abstract Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;
.super Ljava/lang/Object;
.source "IProtocol.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract assemble()V
.end method

.method public abstract bizCode()I
.end method

.method public abstract createTime()J
.end method

.method public abstract fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract monitorTag()I
.end method

.method public abstract msgType()I
.end method

.method public abstract needACK()Z
.end method

.method public abstract qosLevel()B
.end method

.method public abstract routerId()Ljava/lang/String;
.end method

.method public abstract statusCode()I
.end method

.method public abstract subType()I
.end method

.method public abstract sysCode()I
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toProtocol()[B
.end method

.method public abstract topic()Ljava/lang/String;
.end method

.method public abstract type()I
.end method

.method public abstract userId()Ljava/lang/String;
.end method
