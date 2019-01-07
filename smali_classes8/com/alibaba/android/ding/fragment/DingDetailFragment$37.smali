.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 2740
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v3, 0x12ec0be

    .line 2743
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    const v2, 0x12ec0bd

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2744
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->X(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2745
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 3025
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 2759
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    invoke-static {v2}, Lbkh;->L(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v3

    .line 3030
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3034
    new-instance v4, Lbjj$1;

    invoke-direct {v4, v1, v2, v3}, Lbjj$1;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 3068
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v4, v2, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 3069
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 2747
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 3735
    if-eqz v1, :cond_0

    .line 3738
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 2749
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2750
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2752
    const/4 v0, 0x1

    .line 2753
    .local v0, "bizType":I
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2754
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2756
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$37;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 3828
    iget-wide v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 2756
    invoke-interface {v1, v2, v3, v0}, Lbaf$a;->a(JI)V

    goto/16 :goto_0
.end method
