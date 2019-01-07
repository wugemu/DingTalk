.class final Lcvh$1;
.super Ljava/lang/Object;
.source "FestivalRedPacketsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcvh;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcvh;


# direct methods
.method constructor <init>(Lcvh;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcvh;

    .prologue
    .line 80
    iput-object p1, p0, Lcvh$1;->d:Lcvh;

    iput-object p2, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iput-object p3, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p4, p0, Lcvh$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcvh$1;->d:Lcvh;

    iget-object v0, v0, Lcvh;->d:Landroid/app/Activity;

    invoke-static {v0}, Ldkl;->a(Landroid/content/Context;)Ldkl;

    move-result-object v0

    iget-object v1, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iget-object v2, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v1, v2}, Ldkl;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 84
    iget-object v0, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcvh$1;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v4, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iget-object v6, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;JLjava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_festivalredenvelope_open_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 108
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "noRequestTimeMs"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "intervalString":Ljava/lang/String;
    const-wide/16 v10, 0x7d0

    .line 92
    .local v10, "interval":J
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 99
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    .local v8, "currentTime":J
    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    sub-long v0, v8, v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_3

    iget-object v0, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    sub-long v0, v8, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 101
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcvh$1;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    .end local v8    # "currentTime":J
    :catch_0
    move-exception v7

    .line 96
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "currentTime":J
    :cond_3
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcvh$1;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcvh$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    iget-object v3, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v4, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iget-object v6, p0, Lcvh$1;->a:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;JLjava/lang/String;)V

    goto/16 :goto_0
.end method
