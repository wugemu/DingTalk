.class public Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.source "UserFragment.java"

# interfaces
.implements Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;",
        "Lfir;"
    }
.end annotation


# instance fields
.field private g:Landroid/widget/ListView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Lfjj;

.field private l:Lfjf;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->o:I

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    invoke-virtual {v0}, Lfjf;->notifyDataSetChanged()V

    .line 242
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4083
    invoke-static {p1}, Lflr;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    invoke-virtual {v0}, Lfjj;->a()V

    .line 155
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->b_(Z)V

    .line 176
    return-void
.end method

.method public final a(ZI)V
    .locals 6
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    .line 2045
    iget-object v0, v2, Lfjj;->b:Ljava/util/List;

    .line 210
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2196
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 2197
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2198
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 2199
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2200
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v2, :cond_1

    .line 2201
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->k()Z

    .line 2204
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 215
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 216
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v2, Lezg$l;->search_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 223
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->highlight_search_keyword:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    .line 235
    .end local v1    # "style":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->n:Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 230
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->a(Ljava/util/List;)V

    .line 231
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    invoke-virtual {v2, v0}, Lfjf;->a(Ljava/util/List;)V

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    invoke-virtual {v2}, Lfjf;->notifyDataSetChanged()V

    .line 3190
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3191
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3192
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lezg$h;->letter_list:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lezg$h;->tv_overlay:I

    return v0
.end method

.method public final i()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    new-instance v1, Lfjf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->o:I

    invoke-direct {v1, v2, v3}, Lfjf;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    .line 1045
    iget-object v2, v2, Lfjj;->b:Ljava/util/List;

    .line 136
    invoke-virtual {v1, v2}, Lfjf;->a(Ljava/util/List;)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->l:Lfjf;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v1, :cond_1

    .line 145
    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->i()V

    .line 147
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v3, Lfjj;

    invoke-direct {v3}, Lfjj;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    .line 1040
    iput-object p0, v3, Lfjj;->a:Lfir;

    .line 96
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->o:I

    .line 97
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v4, "keyword"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v4, "intent_key_contact_choose_request"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->p:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 99
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->p:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->p:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getInvitedUserList()Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "userProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 104
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    invoke-virtual {v3, v2}, Lfjj;->a(Ljava/util/ArrayList;)V

    .line 111
    .end local v1    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "userProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->m:Ljava/lang/String;

    .line 114
    :cond_3
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
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->i:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->j:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->empty_friend_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->empty_friend_desc:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onDestroy()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/UserFragment;->k:Lfjj;

    invoke-virtual {v0}, Lfjj;->a()V

    .line 161
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lezg$j;->fragment_friends:I

    return v0
.end method
