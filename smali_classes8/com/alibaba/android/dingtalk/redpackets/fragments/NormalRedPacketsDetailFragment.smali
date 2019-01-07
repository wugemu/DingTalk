.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "NormalRedPacketsDetailFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->d:Landroid/widget/TextView;

    sget v1, Lcaj$f;->redpackets_tips_normal:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;)V

    const-class v5, Lcma;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 81
    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    invoke-virtual {v1, v2, v3}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_yuan:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    if-ne v0, v10, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7ea2\u5305\u91d1\u989d%s\u5143, \u5df2\u8fc7\u671f"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7ea2\u5305\u91d1\u989d%s\u5143, \u5df2\u9886\u5b8c"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7ea2\u5305\u91d1\u989d%s\u5143, \u7b49\u5f85\u5bf9\u65b9\u9886\u53d6"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    if-ne v0, v10, :cond_3

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7ea2\u5305\u91d1\u989d%s\u5143, \u5df2\u8fc7\u671f"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "cluster"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->sender_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->sender_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->d:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->redpackets_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->e:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->redpackets_money:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->f:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->ll_banlance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->h:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->redpackets_sender_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->g:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/NormalRedPacketsDetailFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcaj$e;->fragment_personal_redpackets:I

    return v0
.end method
