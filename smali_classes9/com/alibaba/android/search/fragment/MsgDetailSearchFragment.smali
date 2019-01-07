.class public Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/MsgSearchFragment;
.source "MsgDetailSearchFragment.java"


# static fields
.field public static final D:Ljava/lang/String;


# instance fields
.field private F:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Leoe;

.field private O:Z

.field private P:Lerk$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;-><init>()V

    .line 172
    new-instance v0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->P:Lerk$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 62
    .line 1148
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)Ldcx;

    move-result-object v0

    .line 1149
    if-eqz v0, :cond_2

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->c:Landroid/widget/ListView;

    sget v2, Lemt$e;->search_footer_view:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1155
    if-eqz v1, :cond_0

    .line 1156
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->c:Landroid/widget/ListView;

    sget v2, Lemt$e;->view_footer_network_search_divider:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1160
    if-eqz v1, :cond_1

    .line 1161
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1164
    :cond_1
    invoke-interface {v0}, Ldcx;->a()V

    .line 62
    :cond_2
    return-void
.end method


# virtual methods
.method protected final g()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 230
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
    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "cid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->M:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "is_search_journal"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->O:Z

    .line 1118
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v3, "EVENTBUTLER"

    .line 1119
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 1120
    invoke-interface {v3, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->M:Ljava/lang/String;

    .line 1118
    invoke-interface {v2, v3, v5}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_search_table"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->F:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    instance-of v2, v2, Lerk$a;

    if-eqz v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    check-cast v1, Lerk$a;

    .line 93
    .local v1, "msgSearchPresenter":Lerk$a;
    invoke-interface {v1}, Lerk$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->b(Ljava/util/List;)V

    .line 114
    :goto_0
    return-void

    .line 95
    .end local v1    # "msgSearchPresenter":Lerk$a;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->F:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 97
    .local v0, "isMerge":Z
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->N:Leoe;

    if-nez v2, :cond_1

    .line 98
    new-instance v2, Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v6

    invoke-direct {v2, v3, v5, v6}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->N:Leoe;

    .line 101
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->O:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    new-instance v3, Lerf;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->P:Lerk$b;

    invoke-direct {v3, v2, v5, v0}, Lerf;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V

    .line 107
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->N:Leoe;

    invoke-interface {v2, v3}, Leqp$a;->a(Leoe;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    check-cast v1, Lerk$a;

    .line 109
    .restart local v1    # "msgSearchPresenter":Lerk$a;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->M:Ljava/lang/String;

    invoke-interface {v1, v2}, Lerk$a;->d(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->F:Ljava/lang/String;

    invoke-interface {v1, v2}, Lerk$a;->c(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_search_narrow"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-interface {v1, v2}, Lerk$a;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lerk$a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "isMerge":Z
    .end local v1    # "msgSearchPresenter":Lerk$a;
    :cond_2
    move v0, v4

    .line 95
    goto :goto_1

    .line 104
    .restart local v0    # "isMerge":Z
    :cond_3
    new-instance v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v5, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->P:Lerk$b;

    invoke-direct {v3, v2, v5, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->i()V

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->onDestroy()V

    .line 281
    return-void
.end method
