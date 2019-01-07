.class final Lcwr$1;
.super Ljava/lang/Object;
.source "NormalRedPacketsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwr;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcwr;


# direct methods
.method constructor <init>(Lcwr;Lcom/alibaba/wukong/im/Message;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcwr;

    .prologue
    .line 63
    iput-object p1, p0, Lcwr$1;->d:Lcwr;

    iput-object p2, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iput-object p4, p0, Lcwr$1;->c:Landroid/app/Activity;

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
    .line 66
    iget-object v1, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcwr$1;->d:Lcwr;

    iget-object v1, v1, Lcwr;->d:Landroid/app/Activity;

    invoke-static {v1}, Ldkl;->a(Landroid/content/Context;)Ldkl;

    move-result-object v1

    iget-object v2, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iget-object v3, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2, v3}, Ldkl;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 68
    iget-object v1, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 69
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcwr$1;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    iget-object v4, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iget-object v6, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V

    .line 70
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_normal_redenvelope_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 92
    :goto_0
    iget-object v1, p0, Lcwr$1;->c:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v2, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->c(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v2, "noRequestTimeMs"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "intervalString":Ljava/lang/String;
    const-wide/16 v10, 0x7d0

    .line 76
    .local v10, "interval":J
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 83
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 84
    .local v8, "currentTime":J
    iget-object v1, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    sub-long v2, v8, v2

    cmp-long v1, v2, v10

    if-gez v1, :cond_3

    iget-object v1, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    sub-long v2, v8, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 85
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcwr$1;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    iget-object v4, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-virtual {v1, v2, v3, v4}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V

    .line 89
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_rand_redenvelope_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v8    # "currentTime":J
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v8    # "currentTime":J
    :cond_3
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcwr$1;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcwr$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    iget-object v4, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iget-object v6, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iget-object v7, p0, Lcwr$1;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v7, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
