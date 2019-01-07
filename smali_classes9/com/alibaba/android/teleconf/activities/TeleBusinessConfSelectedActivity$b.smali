.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;
.super Ljava/lang/Object;
.source "TeleBusinessConfSelectedActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 420
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 422
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->q(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 423
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$b;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
