.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 704
    return-void
.end method

.method public final onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 681
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v2, Lezg$l;->dt_user_profile_colleague_information:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    const-string/jumbo v2, "PartnerInfoSwitch"

    const-string/jumbo v3, "a2o5v.12302920.1.PartnerInfoSwitch"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 694
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 686
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v2, Lezg$l;->dt_external_contact_setting_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    const-string/jumbo v2, "ExtContactSwitch"

    const-string/jumbo v3, "a2o5v.12302920.1.ExtContactSwitch"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v2, Lezg$l;->dt_user_profile_card_information:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 689
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    const-string/jumbo v2, "ExtCardSwitch"

    const-string/jumbo v3, "a2o5v.12302920.1.ExtCardSwitch"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    sget v2, Lezg$l;->dt_user_profile_connection_feeds:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$23;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    const-string/jumbo v2, "MaiDynamicSwitch"

    const-string/jumbo v3, "a2o5v.12302920.1.MaiDynamicSwitch"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 699
    return-void
.end method
