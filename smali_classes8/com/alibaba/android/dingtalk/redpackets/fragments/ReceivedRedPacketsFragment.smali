.class public Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
.super Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;
.source "ReceivedRedPacketsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;"
    }
.end annotation


# instance fields
.field i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->l:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->i:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsReceivedListObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment<TT;>;"
    const/4 v2, 0x0

    .line 184
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v2

    .line 187
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 190
    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;

    .line 191
    .local v1, "object":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->sender:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->clusterId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->sender:J

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsObject;->clusterId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;-><init>(ZJLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 9
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment<TT;>;"
    const/4 v1, 0x0

    .line 59
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->m:Z

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->m:Z

    .line 63
    if-eqz p1, :cond_3

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->k:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->k:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 72
    .local v0, "start":I
    :goto_1
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;Z)V

    const-class v7, Lcma;

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 72
    invoke-interface {v1, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1217
    new-instance v6, Lcbs$21;

    invoke-direct {v6, v2, v1}, Lcbs$21;-><init>(Lcbs;Lcma;)V

    .line 1224
    const-class v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;

    .line 1225
    if-eqz v1, :cond_0

    .line 1226
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopQueryIService;->queryReceivedRedEnvelops(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0

    .end local v0    # "start":I
    :cond_4
    move v0, v1

    .line 71
    goto :goto_1
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
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lcaj$c;->redpackets_my_empty_icon:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/ReceivedRedPacketsFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lcaj$f;->redpackets_my_received_empty_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 54
    return-object v0
.end method
