.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

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
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 251
    :goto_1
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    goto :goto_1
.end method
