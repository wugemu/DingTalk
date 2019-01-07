.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;
.super Ljava/lang/Object;
.source "DingMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

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
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->g(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    .line 294
    :goto_1
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->h(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    goto :goto_1
.end method
