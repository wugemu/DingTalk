.class final Lanm$3;
.super Ljava/lang/Object;
.source "AdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanm;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field final synthetic b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lblc;

.field final synthetic e:Z

.field final synthetic f:Lanm;


# direct methods
.method constructor <init>(Lanm;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;Landroid/view/View;Lblc;Z)V
    .locals 0
    .param p1, "this$0"    # Lanm;

    .prologue
    .line 594
    iput-object p1, p0, Lanm$3;->f:Lanm;

    iput-object p2, p0, Lanm$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object p3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iput-object p4, p0, Lanm$3;->c:Landroid/view/View;

    iput-object p5, p0, Lanm$3;->d:Lblc;

    iput-boolean p6, p0, Lanm$3;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 599
    iget-object v1, p0, Lanm$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    if-eqz v1, :cond_4

    .line 602
    iget-object v1, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v1, v3}, Lanm;->a(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcry;

    move-result-object v0

    .line 608
    .local v0, "viewObject":Lcry;
    :goto_0
    iget-object v1, p0, Lanm$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 609
    iget-object v1, p0, Lanm$3;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 610
    iget-object v3, p0, Lanm$3;->c:Landroid/view/View;

    .line 2059
    iget-boolean v1, v0, Lcry;->c:Z

    .line 610
    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    .end local v0    # "viewObject":Lcry;
    :cond_0
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    if-eqz v1, :cond_1

    .line 615
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "id=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-eqz v1, :cond_1

    .line 617
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "type=%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v5, v5, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :cond_1
    iget-object v1, p0, Lanm$3;->d:Lblc;

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-nez v1, :cond_6

    .line 624
    :cond_2
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    iget-object v1, p0, Lanm$3;->d:Lblc;

    invoke-interface {v1, v6}, Lblc;->a(Ljava/lang/Object;)V

    .line 689
    :cond_3
    :goto_2
    return-void

    .line 604
    :cond_4
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 1055
    .restart local v0    # "viewObject":Lcry;
    iput-boolean v2, v0, Lcry;->b:Z

    .line 1063
    iput-boolean v2, v0, Lcry;->c:Z

    goto :goto_0

    .line 610
    :cond_5
    const/16 v1, 0x8

    goto :goto_1

    .line 626
    .end local v0    # "viewObject":Lcry;
    :cond_6
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 627
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 628
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 629
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 630
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 631
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_8

    .line 632
    :cond_7
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lcry;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update ViewObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v2, v3}, Lanm;->a(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcry;

    move-result-object v2

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 636
    :cond_8
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TIPS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 637
    iget-boolean v1, p0, Lanm$3;->e:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lblg;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update TipsObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v2, v3}, Lanm;->b(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lblg;

    move-result-object v2

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 641
    :cond_9
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_POPUP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_a

    .line 642
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update AdsAlertStyleObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->alertStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 646
    :cond_a
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_SPLASH:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_b

    .line 647
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update AdsSplashStyleObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->splashStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 651
    :cond_b
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_FRONT_PAGE_H5:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_c

    .line 652
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update FrontPageStyleObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->frontPageStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/FrontPageStyleObject;

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 656
    :cond_c
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_EXTERNAL_BANNER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_e

    .line 657
    iget-object v1, p0, Lanm$3;->f:Lanm;

    invoke-static {v1}, Lanm;->d(Lanm;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 658
    invoke-static {v1, v3}, Lanm;->c(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 659
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lblg;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update TipsObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v2, v3}, Lanm;->b(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lblg;

    move-result-object v2

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 664
    :cond_d
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lanm$3;->d:Lblc;

    invoke-interface {v1, v6}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 667
    :cond_e
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_DING_ADS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_10

    .line 668
    iget-object v1, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v1, v3}, Lanm;->c(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 669
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lblf;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update DingAdsStyleObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->dingAdsStyleObject:Lblf;

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 674
    :cond_f
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    iget-object v1, p0, Lanm$3;->d:Lblc;

    invoke-interface {v1, v6}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 677
    :cond_10
    iget-object v1, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_CHAT_STYLE:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 678
    iget-object v1, p0, Lanm$3;->f:Lanm;

    iget-object v3, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v1, v3}, Lanm;->c(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 679
    iget-object v1, p0, Lanm$3;->d:Lblc;

    const-class v3, Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    invoke-static {v1, v3}, Lano;->a(Lblc;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 680
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update GuideChatStyleObject"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    iget-object v1, p0, Lanm$3;->d:Lblc;

    iget-object v2, p0, Lanm$3;->b:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->guideChatStyleObject:Lcom/alibaba/android/dingtalk/ads/base/models/GuideChatStyleObject;

    invoke-interface {v1, v2}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 684
    :cond_11
    const-string/jumbo v1, "mgr"

    const-string/jumbo v3, "update null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    iget-object v1, p0, Lanm$3;->d:Lblc;

    invoke-interface {v1, v6}, Lblc;->a(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method
