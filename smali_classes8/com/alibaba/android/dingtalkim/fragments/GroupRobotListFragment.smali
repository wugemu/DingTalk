.class public Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "GroupRobotListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$b;,
        Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 349
    return-void
.end method

.method private static a(Landroid/text/Spannable;Landroid/view/View;)Landroid/text/Spannable;
    .locals 12
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "trimString":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v2

    .line 357
    .local v2, "isMainOrgNationCN":Z
    if-eqz p1, :cond_1

    .line 358
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p0, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 359
    .local v3, "spans":[Landroid/text/style/URLSpan;
    if-eqz v3, :cond_1

    array-length v8, v3

    if-lez v8, :cond_1

    .line 363
    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, v3, v7

    .line 364
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 365
    .local v4, "start":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 366
    .local v0, "end":I
    invoke-interface {p0, v6}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 367
    .local v1, "flags":I
    if-eqz v2, :cond_0

    .line 368
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 369
    new-instance v9, Lcqk;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcqk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v9, v4, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 363
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 372
    :cond_0
    invoke-interface {p0, v4, v0}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 377
    .end local v0    # "end":I
    .end local v1    # "flags":I
    .end local v3    # "spans":[Landroid/text/style/URLSpan;
    .end local v4    # "start":I
    .end local v6    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_1
    if-eqz v2, :cond_2

    .line 380
    .end local p0    # "spannable":Landroid/text/Spannable;
    :goto_2
    return-object p0

    .restart local p0    # "spannable":Landroid/text/Spannable;
    :cond_2
    new-instance p0, Landroid/text/SpannableString;

    .end local p0    # "spannable":Landroid/text/Spannable;
    invoke-direct {p0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "robotCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b(I)V

    .line 177
    if-lez p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "robotCount"    # I
    .param p2, "isError"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    if-eqz p2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_not_added:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b(I)V

    .line 204
    if-lez p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 51
    .line 6168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 6169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(I)V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Ljava/util/List;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 8261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8262
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a(Ljava/util/List;)V

    .line 8264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(IZ)V

    :goto_0
    return-void

    .line 8266
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    return-object v0
.end method

.method private b(I)V
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 213
    if-lez p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_not_added:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 51
    .line 7162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    .line 51
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 51
    .line 8155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 8156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 8157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(I)V

    .line 51
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)V

    const-class v3, Lcma;

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 233
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 255
    .local v0, "apiEventListener":Lcma;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ldxu;->c(Ljava/lang/String;Lcma;)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "group_conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1221
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setNumColumns(I)V

    .line 1222
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 1223
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 1224
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1225
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v2, v3

    .line 1226
    if-lez v2, :cond_0

    .line 1227
    div-int/lit8 v1, v2, 0x7

    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setHorizontalSpacing(I)V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c()V

    .line 2105
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    .line 3099
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v5}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;Landroid/content/Context;B)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    .line 3100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    new-instance v2, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;

    invoke-direct {v2, v6}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;-><init>(I)V

    .line 4038
    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->e:Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;

    .line 4039
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->notifyDataSetChanged()V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->d()V

    .line 4185
    :goto_0
    sget v1, Lctk$i;->and_robot_group_about:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "https://tms.dingtalk.com/markets/dingtalk/drobot?dd_nav_bgcolor=ff2E313D"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 4186
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4187
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->d:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(Landroid/text/Spannable;Landroid/view/View;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->rl_robot_root:I

    if-ne v0, v1, :cond_1

    .line 4300
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 4301
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/group_robot_list.html"

    .line 4302
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->f:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a()I

    move-result v1

    if-gtz v1, :cond_3

    .line 5296
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 4302
    :goto_0
    if-eqz v1, :cond_3

    .line 4303
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/robots_market.html"

    move-object v1, v0

    .line 4305
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4319
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4320
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_groupset_bots_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    :cond_1
    return-void

    .line 5296
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a()V

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 281
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    sget v0, Lctk$f;->tv_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    .line 70
    sget v0, Lctk$f;->ll_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b:Landroid/view/ViewGroup;

    .line 71
    sget v0, Lctk$f;->gv_robot_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 72
    sget v0, Lctk$f;->tv_about_robot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->d:Landroid/widget/TextView;

    .line 73
    sget v0, Lctk$f;->rl_robot_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->g:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    sget v0, Lctk$f;->rl_robot_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lctk$g;->fragment_group_robot:I

    return v0
.end method
