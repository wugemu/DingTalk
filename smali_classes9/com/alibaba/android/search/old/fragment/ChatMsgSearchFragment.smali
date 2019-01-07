.class public Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "ChatMsgSearchFragment.java"


# static fields
.field private static q:Lcom/alibaba/android/search/consts/SubPager;

.field public static final u:Ljava/lang/String;


# instance fields
.field private r:Leqd;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lenx;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MSG:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    .line 46
    const-class v0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->s:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->v:Z

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v3, "search_more_click_type"

    const-string/jumbo v4, "type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "chatmsg"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->H:Landroid/os/Bundle;

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .line 81
    .local v2, "detailFragment":Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(Lenx;)V

    .line 87
    new-instance v1, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 88
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->p:Leoe;

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->p:Leoe;

    .line 1084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->p:Leoe;

    .line 1092
    iget v3, v3, Leoe;->b:I

    .line 90
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 92
    :cond_0
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 93
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 94
    invoke-static {}, Leqb;->b()V

    .line 95
    return-void
.end method

.method public a(Lenx;)V
    .locals 0
    .param p1, "listener"    # Lenx;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    .line 211
    return-void
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lemt$g;->search_group_message:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Leqd;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leqd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->r:Leqd;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->r:Leqd;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->H:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Leqd;->a(Ljava/lang/String;JLenx;Landroid/os/Bundle;Z)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->r:Leqd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    sget-object v1, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    invoke-interface {v0, v1, v6}, Lenx;->a(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->s:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->b(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->t:Lenx;

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->r:Leqd;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->r:Leqd;

    .line 2066
    iput-object v1, v0, Leqd;->d:Lenx;

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onDestroy()V

    .line 220
    return-void
.end method
