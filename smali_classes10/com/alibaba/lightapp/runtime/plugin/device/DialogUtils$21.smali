.class Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->doRatingAndFeedback(Lorg/json/JSONObject;JLcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedback(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "feedbackUrl"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "rating"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 773
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v0, "param":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 776
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "source"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string/jumbo v2, "rating"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "starwindow-unlike-click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 780
    return-void
.end method

.method public onPraise(Ljava/lang/String;I)V
    .locals 13
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "rating"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 699
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 700
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "source"

    invoke-interface {v5, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v10, "rating"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    const-string/jumbo v11, "contact"

    const-string/jumbo v12, "rate_share"

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 704
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v10

    const-string/jumbo v11, "contact"

    const-string/jumbo v12, "rate_share_content"

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, "shareJson":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 707
    const-string/jumbo v10, "lightapp"

    const-string/jumbo v11, "DialogUtils"

    const-string/jumbo v12, "share json null"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    .line 769
    .end local v7    # "shareJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 714
    .restart local v7    # "shareJson":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 715
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "title"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "share title null"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v10, "content"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "share content null"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v10, "url"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "share url null"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 718
    .local v9, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 719
    :cond_1
    const-string/jumbo v10, "lightapp"

    const-string/jumbo v11, "DialogUtils"

    const-string/jumbo v12, "title or content or url is empty"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 759
    const-string/jumbo v10, "lightapp"

    const-string/jumbo v11, "DialogUtils"

    const-string/jumbo v12, "share json parse exception"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 726
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v10

    const-class v11, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v10, v11}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 727
    .local v3, "mShareInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_3

    .line 728
    const-string/jumbo v10, "lightapp"

    const-string/jumbo v11, "DialogUtils"

    const-string/jumbo v12, "mContext null"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v4, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 737
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :goto_1
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 747
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_4
    new-instance v6, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v6}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 750
    .local v6, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v6, v8}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v6, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v6, v9}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 753
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10, v4, v6}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 755
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const-string/jumbo v11, "starwindow-share-click"

    invoke-interface {v10, v11, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 739
    .end local v6    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_5
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 766
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "mShareInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .end local v4    # "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .end local v7    # "shareJson":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$21;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    .line 767
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const-string/jumbo v11, "starwindow-like-click"

    invoke-interface {v10, v11, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
