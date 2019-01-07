.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 848
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->y()V

    .line 849
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->init()V

    .line 851
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->E:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->w()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 852
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 853
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->q()V

    .line 854
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->r()V

    .line 862
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->G:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ag()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 863
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->ae:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->Y()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 864
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->af:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v3, "contact_connection_square"

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 866
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->ag:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 867
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->aj:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1872
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ae()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v9

    .line 1873
    if-eqz v9, :cond_7

    .line 1880
    iget v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    .line 1881
    :goto_7
    iget v1, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    .line 1882
    :goto_8
    iget v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    .line 1883
    :goto_9
    iget v3, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    const/4 v3, 0x1

    .line 1884
    :goto_a
    iget v4, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const/4 v4, 0x1

    .line 1885
    :goto_b
    iget v5, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    const/4 v5, 0x1

    .line 1886
    :goto_c
    iget v6, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_16

    const/4 v6, 0x1

    .line 1887
    :goto_d
    iget v7, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    const/4 v7, 0x1

    .line 1888
    :goto_e
    iget v8, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_18

    const/4 v8, 0x1

    .line 1890
    :goto_f
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v10

    .line 1891
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v11

    sget-object v12, Lble;->X:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez v10, :cond_19

    :cond_0
    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v11, v12, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1893
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1894
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v10

    sget-object v11, Lble;->N:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1895
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const/4 v14, 0x0

    invoke-virtual {v1, v12, v13, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v1, v12, v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(J)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_1
    const/4 v0, 0x1

    .line 1894
    :goto_11
    invoke-virtual {v10, v11, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1897
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1899
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->J:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_2
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1901
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Landroid/content/Context;)Z

    move-result v0

    .line 1902
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->aa:Ljava/lang/String;

    if-nez v5, :cond_3

    if-nez v0, :cond_1c

    :cond_3
    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1904
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->g:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->w()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_4
    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1908
    iget v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 1909
    :goto_15
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->Y:Ljava/lang/String;

    if-nez v7, :cond_5

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->n()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_5
    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1911
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v0

    .line 1912
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->ab:Ljava/lang/String;

    if-nez v8, :cond_6

    if-nez v0, :cond_20

    :cond_6
    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 1914
    if-eqz v6, :cond_7

    .line 1915
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_recommend_info_first_show_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1916
    if-nez v6, :cond_21

    const/4 v0, 0x1

    :goto_18
    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 869
    :cond_7
    return-void

    .line 851
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 856
    :cond_9
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_group_apply_enable"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 856
    if-eqz v0, :cond_a

    .line 857
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->s()V

    goto/16 :goto_1

    .line 859
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->q()V

    goto/16 :goto_1

    .line 862
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 863
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 864
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 866
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 867
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1880
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1881
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 1882
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1883
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1884
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 1885
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 1886
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 1887
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 1888
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 1891
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 1895
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 1899
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 1902
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 1904
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_14

    .line 1908
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 1909
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_16

    .line 1912
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 1916
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_18
.end method
