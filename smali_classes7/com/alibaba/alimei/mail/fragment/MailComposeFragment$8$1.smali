.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1944
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1969
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1950
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getHeight()I

    move-result v6

    .line 1951
    .local v6, "scrollViewHeight":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollY()I

    move-result v3

    .line 1952
    .local v3, "currentScrollY":I
    add-int v2, v3, v6

    .line 1953
    .local v2, "currentEndY":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget v10, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->a:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 1954
    .local v1, "caretY":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 1955
    .local v5, "dp_20":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 1956
    .local v4, "dp_2":I
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lafk;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42900000    # 72.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    sub-int v0, v8, v9

    .line 1960
    .local v0, "adjustY":I
    add-int v8, v1, v5

    if-ge v2, v8, :cond_3

    .line 1961
    sub-int v8, v1, v6

    add-int v7, v8, v5

    .line 1962
    .local v7, "scrollY":I
    if-gez v7, :cond_2

    const/4 v7, 0x0

    .line 1963
    :cond_2
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v10, v10, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollX()I

    move-result v10

    invoke-static {v8, v9, v10, v7}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;II)V

    goto/16 :goto_0

    .line 1964
    .end local v7    # "scrollY":I
    :cond_3
    if-le v3, v1, :cond_4

    .line 1965
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v10, v10, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollX()I

    move-result v10

    sub-int v11, v1, v4

    invoke-static {v8, v9, v10, v11}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;II)V

    goto/16 :goto_0

    .line 1966
    :cond_4
    if-ge v3, v0, :cond_0

    .line 1967
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v9, v9, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    iget-object v10, v10, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollX()I

    move-result v10

    invoke-static {v8, v9, v10, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;II)V

    goto/16 :goto_0
.end method
