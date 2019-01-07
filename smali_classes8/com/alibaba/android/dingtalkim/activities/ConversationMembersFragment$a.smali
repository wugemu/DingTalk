.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 458
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 460
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
