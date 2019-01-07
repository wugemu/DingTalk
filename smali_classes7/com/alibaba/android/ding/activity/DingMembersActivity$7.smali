.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$7;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->j(Lcom/alibaba/android/ding/activity/DingMembersActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->k(Lcom/alibaba/android/ding/activity/DingMembersActivity;)I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Laxp$i;->choose_limit:I

    .line 267
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->j(Lcom/alibaba/android/ding/activity/DingMembersActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 265
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .line 267
    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->k(Lcom/alibaba/android/ding/activity/DingMembersActivity;)I

    move-result v0

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->l(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lbjm;->a(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$7;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->finish()V

    goto :goto_0
.end method
