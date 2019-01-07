.class public final Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;
.super Ljava/lang/Object;
.source "BaseLetterFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    .prologue
    .line 99
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>.a;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 102
    .local p0, "this":Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;, "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment<TT;>.a;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->i()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->c(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->d(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->d(Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;)Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment$b;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .end local v0    # "position":I
    :cond_1
    return-void
.end method
