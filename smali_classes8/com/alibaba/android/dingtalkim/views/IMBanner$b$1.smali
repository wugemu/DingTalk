.class final Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMBanner$b;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    .prologue
    .line 524
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 569
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;"
    instance-of v0, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Ldmx;->a()Ldmx;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Ldmx;->a(Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    .line 575
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onClick(Ljava/lang/Object;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 527
    .local p0, "this":Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;, "Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;"
    instance-of v1, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v9, p1

    .line 528
    check-cast v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 529
    .local v9, "messageBodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    iget v1, v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 530
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_org_redenvelope_new_banner_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 534
    :goto_0
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .line 535
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    iget-wide v4, v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iget-object v6, v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iget-object v7, v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    .line 534
    invoke-virtual/range {v1 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->a:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->a:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->m(Lcom/alibaba/android/dingtalkim/views/IMBanner;)V

    .line 539
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->j(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 545
    .end local v9    # "messageBodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    :cond_0
    instance-of v1, p1, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-eqz v1, :cond_1

    move-object v10, p1

    .line 546
    check-cast v10, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 547
    .local v10, "redPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v10}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 550
    invoke-static {}, Ldmx;->a()Ldmx;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Ldmx;->a(Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    .line 553
    .end local v10    # "redPacketsPlanDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;
    :cond_1
    instance-of v1, p1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v1, :cond_2

    move-object v8, p1

    .line 554
    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 555
    .local v8, "billDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    if-eqz v8, :cond_2

    iget-object v1, v8, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 556
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->linkUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/IMBanner$b;->b:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->l(Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 560
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "page_id"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/IMBanner$b$1;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "AlipayCard"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Button-AlipayCard"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 565
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "billDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    :cond_2
    return-void

    .line 532
    .restart local v9    # "messageBodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_org_redenvelope_banner_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
