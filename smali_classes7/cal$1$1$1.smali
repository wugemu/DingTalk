.class final Lcal$1$1$1;
.super Ljava/lang/Object;
.source "MyRedPacketsAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcal$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcal$1$1;


# direct methods
.method constructor <init>(Lcal$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcal$1$1;

    .prologue
    .line 169
    .local p0, "this":Lcal$1$1$1;, "Lcal$1$1$1;"
    iput-object p1, p0, Lcal$1$1$1;->a:Lcal$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 251
    .local p0, "this":Lcal$1$1$1;, "Lcal$1$1$1;"
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 169
    .local p0, "this":Lcal$1$1$1;, "Lcal$1$1$1;"
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcal$1$1$1;, "Lcal$1$1$1;"
    const/4 v11, 0x3

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 169
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1173
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 1174
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 1175
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v2

    .line 1176
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1179
    :cond_0
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->pickPlanTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1180
    sget v0, Lcaj$f;->dt_redenvelop_resend_timeout:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1190
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-static {v0, p1, v8}, Lcbv;->a(Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1186
    iput v9, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    .line 1187
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->c:Lcal;

    invoke-static {v0}, Lcal;->b(Lcal;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v1, v1, Lcal$1$1;->a:Lcal$1;

    iget v1, v1, Lcal$1;->b:I

    iget-object v2, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v2, v2, Lcal$1$1;->a:Lcal$1;

    iget-object v2, v2, Lcal$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->c:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    .line 1189
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v1, v1, Lcal$1$1;->a:Lcal$1;

    iget-object v1, v1, Lcal$1;->c:Lcal;

    invoke-static {v1}, Lcal;->a(Lcal;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto :goto_0

    .line 1194
    :cond_2
    new-instance v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-direct {v7}, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;-><init>()V

    .line 1195
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    .line 1196
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    .line 1197
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    .line 1199
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    .line 1200
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgId:Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgName:Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    .line 1204
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    if-eqz v0, :cond_3

    .line 1205
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    .line 1206
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->themeId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->themeId:Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->bgMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->bgMediaId:Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    .line 1211
    :cond_3
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1212
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x389

    const/16 v2, 0x389

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    .line 1220
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1223
    const-string/jumbo v3, "clusterId"

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    new-instance v3, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 1225
    iput v8, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->priority:I

    .line 1226
    iput-object v2, v3, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 1227
    new-instance v2, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 1228
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    .line 1229
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1230
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1231
    new-array v3, v11, [Ljava/lang/String;

    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    aput-object v0, v3, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ":"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    .line 1240
    :goto_2
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v3, "send"

    const-string/jumbo v4, "redpackets msg resend"

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;

    .line 1242
    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 1243
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput v9, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    .line 1244
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->c:Lcal;

    invoke-static {v0}, Lcal;->b(Lcal;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v1, v1, Lcal$1$1;->a:Lcal$1;

    iget v1, v1, Lcal$1;->b:I

    iget-object v2, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v2, v2, Lcal$1$1;->a:Lcal$1;

    iget-object v2, v2, Lcal$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->c:Lcal;

    invoke-virtual {v0}, Lcal;->notifyDataSetChanged()V

    .line 1246
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v1, v1, Lcal$1$1;->a:Lcal$1;

    iget-object v1, v1, Lcal$1;->c:Lcal;

    invoke-static {v1}, Lcal;->a(Lcal;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto/16 :goto_0

    .line 1213
    :cond_4
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-ne v0, v9, :cond_5

    .line 1214
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x384

    const/16 v2, 0x384

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 1215
    :cond_5
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-nez v0, :cond_6

    .line 1216
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x385

    const/16 v2, 0x385

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 1218
    :cond_6
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x386

    const/16 v2, 0x386

    const-string/jumbo v3, "url"

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 1233
    :cond_7
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcaj$f;->dt_session_list_festival_red_packet_prefix:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ":"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 1235
    :cond_8
    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-ne v0, v9, :cond_9

    .line 1236
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcaj$f;->repackets_enterprise:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ":"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 1238
    :cond_9
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcaj$f;->repackets_xpn_normal:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ":"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcal$1$1$1;->a:Lcal$1$1;

    iget-object v0, v0, Lcal$1$1;->a:Lcal$1;

    iget-object v0, v0, Lcal$1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2
.end method
