.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NameCardExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1596
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1597
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1$1;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8$1;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;->d:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->w(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    .line 1598
    return-void
.end method
