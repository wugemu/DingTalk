.class public Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "AddContactFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;,
        Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;
    }
.end annotation


# instance fields
.field public final b:[Ljava/lang/String;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private e:Lfgd;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private i:Landroid/os/Handler;

.field private j:[Ljava/lang/String;

.field private k:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m:Ljava/util/HashMap;

    .line 66
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->b:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    .line 2184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2186
    invoke-static {}, Lflr;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m:Ljava/util/HashMap;

    .line 2190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$3;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)Lfgd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e:Lfgd;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    .line 46
    .line 2217
    const-string/jumbo v0, "AddContactFriendFragment"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$4;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x23

    .line 46
    .line 2250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2251
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->j:[Ljava/lang/String;

    .line 2252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2253
    :goto_0
    if-ge v1, v3, :cond_2

    .line 2254
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    .line 2255
    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 2256
    :goto_1
    if-eq v0, v5, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 2258
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2259
    iget-object v5, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    iget-object v5, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 2253
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2255
    :cond_1
    const/16 v0, 0x20

    goto :goto_1

    .line 2263
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2264
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2265
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 2266
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2267
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2269
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e:Lfgd;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e:Lfgd;

    invoke-virtual {v0}, Lfgd;->notifyDataSetChanged()V

    .line 93
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    const-class v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lfgd;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfgd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e:Lfgd;

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->e:Lfgd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->f()V

    .line 1273
    new-instance v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$5;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;)V

    .line 1296
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1297
    const-string/jumbo v0, "com.workapp.friend_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v0, "action_friend_request_status_changed"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 132
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_no_contact:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->local_contact_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->letter_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$a;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->g:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->i:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;-><init>(Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;B)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->k:Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment$b;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/AddContactFriendFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lezg$j;->fragment_local_contact:I

    return v0
.end method
