.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 983
    check-cast p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .line 1986
    if-nez p1, :cond_1

    .line 1987
    const-string/jumbo v0, "ads"

    const-class v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dialog object is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    const-string/jumbo v2, "ads"

    const-class v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "title:"

    aput-object v5, v4, v1

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->title:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    const-string/jumbo v6, ",mid:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->mediaId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1994
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    .line 1995
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->mediaId:Ljava/lang/String;

    .line 2193
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;

    .line 1996
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->title:Ljava/lang/String;

    .line 3181
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->d:Ljava/lang/String;

    .line 1997
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->text:Ljava/lang/String;

    .line 3185
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->e:Ljava/lang/String;

    .line 1998
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actText2:Ljava/lang/String;

    .line 3201
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->f:Ljava/lang/String;

    .line 1999
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actText1:Ljava/lang/String;

    .line 3205
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->g:Ljava/lang/String;

    .line 2001
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    const-string/jumbo v3, "market"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2002
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2003
    const-string/jumbo v2, "leftButtonURL"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl1:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    const-string/jumbo v2, "rightButtonURL"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;ZLjava/util/Map;)V

    .line 3213
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->a:Landroid/view/View$OnClickListener;

    .line 2027
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$2;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;Ljava/util/Map;)V

    .line 4209
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->b:Landroid/view/View$OnClickListener;

    .line 2043
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;Ljava/util/Map;)V

    .line 4217
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->c:Landroid/view/View$OnClickListener;

    .line 2056
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 2001
    goto :goto_1
.end method
