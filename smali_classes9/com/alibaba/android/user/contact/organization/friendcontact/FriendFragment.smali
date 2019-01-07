.class public Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.source "FriendFragment.java"

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

.field private k:Lfjg;

.field private l:Lfjf;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;-><init>()V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)Lfjg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    return-object v0
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    sget-boolean v0, Lflr;->a:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    invoke-virtual {v0}, Lfjg;->a()V

    .line 190
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->o:Ljava/lang/Runnable;

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    invoke-virtual {v0}, Lfjf;->notifyDataSetChanged()V

    .line 290
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5093
    invoke-static {p1}, Lflr;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k()V

    .line 167
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->b_(Z)V

    .line 224
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

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    .line 3046
    iget-object v0, v2, Lfjg;->b:Ljava/util/List;

    .line 258
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3244
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 3245
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3246
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3247
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3248
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v2, :cond_1

    .line 3249
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->k()Z

    .line 3252
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 264
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v2, Lezg$l;->search_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->highlight_search_keyword:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 272
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    .line 283
    .end local v1    # "style":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 267
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->n:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 278
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->a(Ljava/util/List;)V

    .line 279
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    invoke-virtual {v2, v0}, Lfjf;->a(Ljava/util/List;)V

    .line 280
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    invoke-virtual {v2}, Lfjf;->notifyDataSetChanged()V

    .line 4238
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4239
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4240
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lezg$h;->letter_list:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lezg$h;->tv_overlay:I

    return v0
.end method

.method public final i()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Lfjf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->q:I

    invoke-direct {v0, v1, v2}, Lfjf;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    .line 2046
    iget-object v1, v1, Lfjg;->b:Ljava/util/List;

    .line 153
    invoke-virtual {v0, v1}, Lfjf;->a(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->l:Lfjf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    .line 159
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Lfjg;

    invoke-direct {v0}, Lfjg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k:Lfjg;

    .line 1041
    iput-object p0, v0, Lfjg;->a:Lfir;

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->q:I

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->m:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->i:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->j:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_group_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_empty_friend_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnMarginTop(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->home_menu_add_friend:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->btn_login_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    new-instance v0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->p:Landroid/content/BroadcastReceiver;

    .line 1202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1203
    const-string/jumbo v1, "com.workapp.friend_first_load"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onDestroy()V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;->k()V

    .line 173
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lezg$j;->fragment_friends:I

    return v0
.end method
