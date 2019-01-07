.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 695
    .local v1, "headerCount":I
    sub-int/2addr p3, v1

    .line 696
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " Click item "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " headCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    if-ltz p3, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_0

    .line 698
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 699
    .local v2, "recordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v2, :cond_0

    .line 703
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v5, v6, :cond_2

    .line 704
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    goto :goto_0

    .line 705
    :cond_2
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v5, v6, :cond_5

    .line 707
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "call_record_ad_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 708
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->d:Ljava/lang/String;

    .line 709
    .local v4, "url":Ljava/lang/String;
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->b:Ljava/lang/String;

    .line 710
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Goto "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 712
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;

    move-result-object v5

    iget v5, v5, Levg;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 715
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "key_create_org_source"

    const/16 v6, 0x9

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 721
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;

    move-result-object v5

    iget v5, v5, Levg;->k:I

    sget-object v6, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_SHOW_ONCE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->valueOf()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 722
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    goto/16 :goto_0

    .line 718
    :cond_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 724
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v5, v6, :cond_6

    .line 726
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V

    .line 727
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "call_record_contact_click"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_6
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v5, v6, :cond_0

    .line 730
    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v5, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 731
    invoke-static {}, Levm;->a()Levm;

    move-result-object v5

    invoke-virtual {v5}, Levm;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 732
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Goto running video conf"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v5, v6}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 735
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 1370
    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 735
    invoke-static {v5}, Lewb;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 737
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    goto/16 :goto_0
.end method
