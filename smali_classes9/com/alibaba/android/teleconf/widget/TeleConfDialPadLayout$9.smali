.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->j(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$9;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->k(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;->a(Z)V

    .line 401
    :cond_0
    return v2
.end method
