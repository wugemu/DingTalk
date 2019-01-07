.class public abstract Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "MyRedPacketsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ListView;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field public d:Lcal;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public final h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/os/Handler;

.field private m:Lcjo$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->e:Ljava/util/ArrayList;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->f:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->g:Z

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->h:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->l:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->i:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
    .param p2, "x2"    # I

    .prologue
    .line 53
    .line 1143
    if-eqz p1, :cond_0

    .line 1146
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)V

    .line 1169
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v2

    iget-boolean v3, p1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->a:Z

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;->c:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1170
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v6, Lcma;

    invoke-interface {v0, v1, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1494
    new-instance v1, Lcbs$14;

    invoke-direct {v1, v2, v0}, Lcbs$14;-><init>(Lcbs;Lcma;)V

    .line 1501
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 1502
    if-eqz v0, :cond_0

    .line 1503
    if-eqz v3, :cond_1

    .line 1504
    invoke-interface {v0, v5, v1}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->deleteSendedRedEnvelopCluster(Ljava/lang/String;Liyv;)V

    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->deleteReceivedRedEnvelopCluster(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->j:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->i:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->k:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->k:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
.end method

.method public abstract a(Z)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(Z)V

    .line 178
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V

    const-class v2, Lcjo$a;

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 178
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->m:Lcjo$a;

    .line 192
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->m:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 193
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
    .line 83
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->I:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->redpackets_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->I:Landroid/view/View;

    sget v1, Lcaj$d;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 197
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->m:Lcjo$a;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->m:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment<TT;>;"
    sget v0, Lcaj$e;->fragment_my_redpackets:I

    return v0
.end method
