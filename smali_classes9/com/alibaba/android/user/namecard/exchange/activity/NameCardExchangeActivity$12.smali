.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;
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
    .line 485
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lftz;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .line 1230
    if-eqz v0, :cond_0

    .line 1231
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/share_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method
