.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldjb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 5027
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 5030
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 5031
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 5035
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6757
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6758
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    if-nez v0, :cond_2

    .line 6759
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6760
    if-eqz v0, :cond_0

    .line 6761
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    .line 6762
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6763
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 6764
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6765
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6766
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6771
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5036
    :cond_1
    return-void

    .line 6769
    :cond_2
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 6776
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6777
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6778
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6779
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->n:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5041
    :cond_0
    return-void
.end method
