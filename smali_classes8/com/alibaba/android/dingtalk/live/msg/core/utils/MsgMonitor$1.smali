.class final Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;
.super Lfk;
.source "MsgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor;->commitMonitor(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfk",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
    .locals 3

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    invoke-direct {p0}, Lfk;-><init>()V

    .line 33
    const-string/jumbo v0, "MKT_DIMENS_BIZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->bizCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "MKT_DIMENS_DUP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->needACK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v0, "MKT_DIMENS_MQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->msgType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "MKT_DIMENS_TYPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "MKT_DIMENS_SUBTYPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->subType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "MKT_DIMENS_TOPIC"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->val$p:Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MsgMonitor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
