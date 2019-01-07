.class final Lcom/alibaba/android/ding/widget/DingAdsView$1;
.super Ljava/lang/Object;
.source "DingAdsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingAdsView;->a(ILblf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lblf;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingAdsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAdsView;ILblf;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAdsView;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->c:Lcom/alibaba/android/ding/widget/DingAdsView;

    iput p2, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->a:I

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->b:Lblf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 130
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->a:I

    .line 1187
    invoke-static {v1}, Lbbl;->d(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1186
    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1189
    invoke-virtual {v0, v1}, Lbbl;->a(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->b:Lblf;

    iget-object v0, v0, Lblf;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->c:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->c:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->b:Lblf;

    iget-object v2, v2, Lblf;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->c:Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAdsView;->a(Lcom/alibaba/android/ding/widget/DingAdsView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingAdsView$1;->a:I

    .line 1692
    packed-switch v0, :pswitch_data_0

    .line 1707
    :goto_0
    return-void

    .line 1694
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1695
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    const-string/jumbo v1, "ding_advertise_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1699
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1700
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    const-string/jumbo v1, "ding_advertise_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1704
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1705
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    const-string/jumbo v1, "ding_advertise_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1709
    :pswitch_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1710
    const-string/jumbo v1, "menu"

    const-string/jumbo v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const-string/jumbo v1, "ding_advertise_detail"

    invoke-static {v1, v0}, Lbjz;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
