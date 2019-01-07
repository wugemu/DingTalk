.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/view/View;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->K(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const-string/jumbo v0, "pref_key_ding_check_in_conference_more"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->K(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$19;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->L(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1160
    return-void
.end method
