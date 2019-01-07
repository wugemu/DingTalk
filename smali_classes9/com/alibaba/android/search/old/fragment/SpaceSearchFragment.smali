.class public Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;
.source "SpaceSearchFragment.java"


# instance fields
.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->i:J

    return-wide p1
.end method

.method private a(JI)V
    .locals 7
    .param p1, "cursor"    # J
    .param p3, "pageSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iput-boolean v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->j:Z

    .line 61
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->c(Z)V

    .line 63
    new-instance v5, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;)V

    .line 132
    .local v5, "apiEventListener":Lcma;
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v5, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "apiEventListener":Lcma;
    check-cast v5, Lcma;

    .line 135
    .restart local v5    # "apiEventListener":Lcma;
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 136
    .local v0, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->f:Ljava/lang/String;

    long-to-int v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;IILcma;)V

    .line 138
    .end local v0    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v5    # "apiEventListener":Lcma;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->j:Z

    return v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;)Leqc;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    new-instance v0, Leqh;

    invoke-direct {v0, p1}, Leqh;-><init>(Landroid/app/Activity;)V

    .line 153
    .local v0, "spaceSearchAdapter":Leqh;
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leqh;->a(Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->a(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 172
    new-instance v1, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;-><init>()V

    .line 173
    .local v1, "detailFragment":Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->a(Z)V

    .line 1055
    iput-boolean v4, v1, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->d:Z

    .line 177
    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/android/search/consts/SubPager;->PAGE_DETAIL:Lcom/alibaba/android/search/consts/SubPager;

    invoke-interface {v2, v3, v4}, Lenx;->b(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 180
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 181
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    .line 1084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    .line 1092
    iget v2, v2, Leoe;->b:I

    .line 183
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 185
    :cond_0
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 187
    invoke-static {}, Leqb;->b()V

    .line 188
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 159
    sget v0, Lemt$g;->search_cloud:I

    return v0
.end method

.method protected final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    .line 1148
    iget-wide v0, v0, Leoe;->g:J

    .line 193
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1152
    iput-wide v2, v0, Leoe;->g:J

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->d()V

    .line 198
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->i:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->k:Z

    if-eqz v0, :cond_1

    .line 199
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->i:J

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->a(JI)V

    .line 201
    :cond_1
    return-void
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 164
    sget v0, Lemt$g;->search_cloud_file:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->b(Z)V

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->c:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x4

    invoke-direct {p0, v4, v5, v0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->a(JI)V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->f:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->h:Leoe;

    .line 54
    const/16 v0, 0x14

    invoke-direct {p0, v4, v5, v0}, Lcom/alibaba/android/search/old/fragment/SpaceSearchFragment;->a(JI)V

    goto :goto_0
.end method
