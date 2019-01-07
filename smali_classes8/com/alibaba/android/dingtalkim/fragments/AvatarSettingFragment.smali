.class public Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "AvatarSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;,
        Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field private g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/widget/BaseAdapter;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->d:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->m:Landroid/widget/BaseAdapter;

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;)Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 371
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 372
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    invoke-direct {v3, v9, v7}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->e:Ljava/lang/String;

    invoke-direct {v3, v10, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->avatars:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;->avatars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultAvatarsModel;

    .line 378
    .local v0, "avatar":Lcom/alibaba/android/dingtalkim/models/idl/DefaultAvatarsModel;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/idl/DefaultAvatarsModel;->mediaId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v0    # "avatar":Lcom/alibaba/android/dingtalkim/models/idl/DefaultAvatarsModel;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v10, :cond_2

    .line 383
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->k:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    if-ne v2, v10, :cond_6

    .line 385
    iput-boolean v9, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    .line 391
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 395
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 396
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->d:I

    if-eqz v2, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 407
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 414
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->j:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 417
    :cond_5
    return-void

    .line 387
    :cond_6
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    goto :goto_1

    .line 401
    :cond_7
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$e;->enterprise_cornor_icon_for_session_fragment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 404
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 411
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1128
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V

    const-class v2, Lcma;

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1128
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v0}, Ldrc;->a(Lcma;)Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->g:Lcom/alibaba/android/dingtalkim/models/idl/DefaultGroupIconsModel;

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->avatar_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->enterprise_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->i:Landroid/widget/TextView;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->default_avatars_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->j:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->j:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1310
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$3;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->l:Landroid/content/BroadcastReceiver;

    .line 1364
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1365
    const-string/jumbo v0, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1367
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 421
    sget v0, Lctk$g;->im_avatar_setting:I

    return v0
.end method
