.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$14;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 514
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$14;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$14;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    return v0
.end method
