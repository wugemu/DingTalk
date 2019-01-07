.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 776
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 777
    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 778
    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 779
    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 784
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 785
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 786
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 787
    .local v3, "screenHeight":I
    const/4 v4, 0x0

    .line 788
    .local v4, "stableInsetBottom":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 789
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 790
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 794
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    sub-int v0, v5, v4

    .line 795
    .local v0, "heightDifference":I
    const/16 v5, 0x12c

    if-le v0, v5, :cond_3

    .line 796
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)V

    .line 797
    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->b:I

    if-nez v5, :cond_3

    .line 799
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5, v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    .line 800
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 801
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 802
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 804
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 805
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 809
    :cond_3
    if-nez v0, :cond_4

    .line 810
    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->b:I

    if-eqz v5, :cond_4

    .line 812
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->l(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 813
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Z)V

    .line 814
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 815
    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 816
    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 817
    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 819
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->p(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 824
    :cond_4
    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$8;->b:I

    goto/16 :goto_0
.end method
