.class public Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "MineGroupConversationFragmentV2.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ExpandableListView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

.field private g:Ldvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    .line 137
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    const/16 v3, 0x8

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->g:Ldvm;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ldvm;->a(Ljava/util/List;)V

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->g:Ldvm;

    invoke-virtual {v1}, Ldvm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_2
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "load gp sz="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ldvn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    .local p1, "creates":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    .local p2, "joins":Ljava/util/List;, "Ljava/util/List<Ldvn;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->f:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    if-ne v0, v1, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->a(Ljava/util/List;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->f:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1070
    new-instance v0, Ldvm;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ldvm;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->g:Ldvm;

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->g:Ldvm;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->g:Ldvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ldvm;->a(Ljava/util/List;)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lctk$i;->icon_group_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->f:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    if-ne v0, v1, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lctk$i;->dt_contact_group_empty_create:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lctk$f;->btn_empty_action:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$1;-><init>(Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    .line 1281
    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lctk$i;->dt_contact_group_empty_join:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_group_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->fromValue(I)Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->f:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 1064
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->I:Landroid/view/View;

    sget v2, Lctk$f;->rl_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->d:Landroid/view/View;

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->I:Landroid/view/View;

    sget v2, Lctk$f;->group_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->b:Landroid/widget/ExpandableListView;

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->I:Landroid/view/View;

    sget v2, Lctk$f;->list_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 53
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroyView()V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    .line 1287
    if-eqz p0, :cond_0

    .line 1288
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lctk$g;->fragment_new_group_conversation:I

    return v0
.end method
