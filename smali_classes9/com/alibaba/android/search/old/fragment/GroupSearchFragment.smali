.class public Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;
.source "GroupSearchFragment.java"


# static fields
.field private static v:Lcom/alibaba/android/search/consts/SubPager;


# instance fields
.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MY_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->v:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;-><init>()V

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
    .line 101
    const-string/jumbo v3, "search_more_click_type"

    const-string/jumbo v4, "type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "group"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    new-instance v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;-><init>()V

    .line 105
    .local v2, "detailFragment":Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->i:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v3, "keyword"

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v3, "count_limit"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->k:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v3, "count_limit_tips"

    iget v4, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->l:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->K:Lcif;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Lcif;)V

    .line 112
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->j:Lenx;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Lenx;)V

    .line 113
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 114
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 117
    new-instance v1, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 118
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->p:Leoe;

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->p:Leoe;

    .line 1084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->p:Leoe;

    .line 1092
    iget v3, v3, Leoe;->b:I

    .line 120
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 122
    :cond_0
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 123
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 124
    invoke-static {}, Leqb;->b()V

    .line 125
    return-void
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->v:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lemt$g;->my_group_conversation_new:I

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v1, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->u:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.android.rimet.search.groupid.join"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->u:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->u:Landroid/content/BroadcastReceiver;

    .line 86
    :cond_0
    return-void
.end method
