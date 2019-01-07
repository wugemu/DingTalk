.class final Lcom/alibaba/android/user/namecard/widget/NameCardView$3;
.super Ljava/lang/Object;
.source "NameCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/NameCardView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/widget/NameCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$3;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

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
    .line 550
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$3;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/share_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v0, "CardQrcode"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2o5v.12302328.1.CardQrcode"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "mainpage_mycode_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView$3;->a:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/my_qrcode.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method
