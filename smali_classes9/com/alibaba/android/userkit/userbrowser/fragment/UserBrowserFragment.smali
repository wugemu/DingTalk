.class public Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "UserBrowserFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private b:Lfxt;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lfxt;

    invoke-virtual {p0}, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfxt;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->b:Lfxt;

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->b:Lfxt;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 50
    .local v0, "orgNodeItemWrapperObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    iput-object v1, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->c:Ljava/util/List;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->I:Landroid/view/View;

    sget v1, Lfxs$a;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/userkit/userbrowser/fragment/UserBrowserFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lfxs$b;->user_kit_browser_fragment:I

    return v0
.end method
