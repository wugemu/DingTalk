.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lftz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->t(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lftz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 1301
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->u(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 1302
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->v(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    .line 1303
    return-void
.end method
