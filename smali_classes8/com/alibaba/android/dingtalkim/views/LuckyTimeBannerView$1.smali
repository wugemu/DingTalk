.class final Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;
.super Ljava/lang/Object;
.source "LuckyTimeBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->a(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 57
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_luckytime_redenvelope_notice_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->c(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Ldmu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->b(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x1

    .line 1038
    :goto_0
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, v0, Ldmu;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    iget-object v4, v0, Ldmu;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    iget-object v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    new-instance v6, Ldmu$1;

    invoke-direct {v6, v0, v5}, Ldmu$1;-><init>(Ldmu;Z)V

    invoke-virtual/range {v1 .. v6}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(JLjava/lang/String;ZLcma;)V

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 58
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->d(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 60
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_luckytime_redenvelope_qiang_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;->e(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->onClick(Ljava/lang/Object;)V

    goto :goto_1
.end method
