.class public Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;
.source "VideoDeviceFragment.java"

# interfaces
.implements Lfir;
.implements Lfis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;",
        "Lfir;",
        "Lfis;"
    }
.end annotation


# instance fields
.field private g:Landroid/widget/ListView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lfkl;

.field private m:Lfkk;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;-><init>()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->p:I

    return-void
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 2035
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lfkl$1;

    invoke-direct {v3, v1}, Lfkl$1;-><init>(Lfkl;)V

    const-class v1, Lcma;

    invoke-interface {v0, v3, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/projection/FocusInterface;->a(Lcma;)V

    .line 147
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    invoke-virtual {v0}, Lfkk;->notifyDataSetChanged()V

    .line 230
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5069
    invoke-static {p1}, Lflr;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k()V

    .line 137
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->b_(Z)V

    .line 163
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

    .line 198
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 3030
    iget-object v0, v2, Lfkl;->c:Ljava/util/List;

    .line 199
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3184
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 3185
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3186
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3187
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3188
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3189
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v2, :cond_1

    .line 3190
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->k()Z

    .line 3193
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v3, Lezg$h;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v2, Lezg$l;->search_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .local v1, "style":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->highlight_search_keyword:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContentSpanStringBuilder(Landroid/text/SpannableStringBuilder;)V

    .line 223
    .end local v1    # "style":Landroid/text/SpannableStringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->o:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    invoke-virtual {v2, v0}, Lfkk;->a(Ljava/util/List;)V

    .line 220
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    invoke-virtual {v2}, Lfkk;->notifyDataSetChanged()V

    .line 4177
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4178
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4179
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4180
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget v0, Lezg$l;->dt_contact_empty_no_device:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lezg$h;->letter_list:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lezg$h;->tv_overlay:I

    return v0
.end method

.method public final i()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    new-instance v0, Lfkk;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->p:I

    invoke-direct {v0, v1, v2}, Lfkk;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 2030
    iget-object v1, v1, Lfkl;->c:Ljava/util/List;

    .line 123
    invoke-virtual {v0, v1}, Lfkk;->a(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->m:Lfkk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    .line 129
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
    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lfkl;

    invoke-direct {v0}, Lfkl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 1025
    iput-object p0, v0, Lfkl;->a:Lfir;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->l:Lfkl;

    .line 1067
    iput-object p0, v0, Lfkl;->b:Lfis;

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->p:I

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->n:Ljava/lang/String;

    .line 89
    :cond_0
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
    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->i:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->j:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->device_default:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_empty_device_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnMarginTop(I)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_empty_konw_more:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->btn_login_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->error_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseLetterFragment;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->k()V

    .line 143
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lezg$j;->fragment_video_device:I

    return v0
.end method
