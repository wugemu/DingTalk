.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "phone_dingcard_mine"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->A:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 334
    return-void
.end method
