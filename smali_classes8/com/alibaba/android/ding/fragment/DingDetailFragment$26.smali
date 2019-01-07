.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;
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
    .line 1210
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

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
    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->M(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->N(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->O(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$26;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->O(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0
.end method
