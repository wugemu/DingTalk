.class public abstract Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;
.super Lckb;
.source "RedPacketInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "festivalType"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 159
    return-void
.end method

.method public a(JLjava/lang/String;ZLcma;)V
    .locals 0
    .param p1, "sender"    # J
    .param p3, "clusterId"    # Ljava/lang/String;
    .param p4, "open"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "cong"    # Ljava/lang/String;
    .param p5, "thirdPartId"    # Ljava/lang/String;
    .param p6, "thirdPartSource"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 249
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 54
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderID"    # J
    .param p5, "clusterID"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 46
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "planDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .prologue
    .line 94
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .prologue
    .line 98
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .param p4, "senderId"    # J
    .param p6, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "receivers"    # [J

    .prologue
    .line 58
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[JDLjava/lang/String;ILcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "receivers"    # [J
    .param p4, "moneyDefault"    # D
    .param p6, "cong"    # Ljava/lang/String;
    .param p7, "pageIndex"    # I
    .param p8, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 74
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p4, "cong"    # Ljava/lang/String;
    .param p5, "thirdPartId"    # Ljava/lang/String;
    .param p6, "thirdPartSource"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;
    .param p8, "callbackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public a(Lcma;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Lcma;)Z
    .locals 1
    .param p1, "packageMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public b(Lcma;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "encryptedCid"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method
