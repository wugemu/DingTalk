.class final Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;
.super Lcq;
.source "SendActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .line 86
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 87
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    const-string/jumbo v1, "cong"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "source_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string/jumbo v1, "extra_msgs"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "thirdparty_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "thirdparty_source"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "intent_key_callback_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->i(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->i(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->i(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 105
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->j(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    move-result-object v1

    goto :goto_0

    .line 114
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 116
    const-string/jumbo v1, "receivers"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->l(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 117
    const-string/jumbo v1, "money"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->m(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 118
    const-string/jumbo v1, "cong"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "source_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string/jumbo v1, "extra_msgs"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "thirdparty_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "thirdparty_source"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "intent_key_callback_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_9

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->j(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    move-result-object v1

    if-nez v1, :cond_6

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    .line 138
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    move-result-object v1

    goto/16 :goto_0

    .line 140
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 142
    const-string/jumbo v1, "cong"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "source_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v1, "receivers"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->l(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 145
    const-string/jumbo v1, "money"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->m(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 146
    const-string/jumbo v1, "extra_msgs"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "thirdparty_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "thirdparty_source"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->g(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "intent_key_callback_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    if-nez v1, :cond_8

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .line 153
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    move-result-object v1

    goto/16 :goto_0

    .line 156
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p1, v1, :cond_b

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->o(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    move-result-object v1

    if-nez v1, :cond_a

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .line 162
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->o(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->o(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    move-result-object v1

    goto/16 :goto_0

    .line 165
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    move-result-object v1

    if-nez v1, :cond_c

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .line 170
    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 184
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->q(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 186
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->r(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    sget v2, Lcaj$f;->redpackets_oriented:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v0    # "title":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->s(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0
.end method
