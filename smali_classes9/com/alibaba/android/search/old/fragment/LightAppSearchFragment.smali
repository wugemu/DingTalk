.class public Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;
.source "LightAppSearchFragment.java"


# instance fields
.field private i:Lenb;

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;-><init>()V

    .line 47
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->i:Lenb;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->k:J

    return-wide p1
.end method

.method private a(JI)V
    .locals 9
    .param p1, "cursor"    # J
    .param p3, "pageSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iput-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->j:Z

    .line 65
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 66
    .local v2, "uid":J
    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c(Z)V

    .line 68
    new-instance v8, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;)V

    .line 134
    .local v8, "apiEventListener":Lcma;
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v0, v8, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "apiEventListener":Lcma;
    check-cast v8, Lcma;

    .line 137
    .restart local v8    # "apiEventListener":Lcma;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->i:Lenb;

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    move-wide v5, p1

    move v7, p3

    invoke-interface/range {v0 .. v8}, Lenb;->a(IJLjava/lang/String;JILcma;)V

    .line 139
    .end local v2    # "uid":J
    .end local v8    # "apiEventListener":Lcma;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->j:Z

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
    .line 153
    new-instance v0, Leqf;

    invoke-direct {v0, p1}, Leqf;-><init>(Landroid/app/Activity;)V

    .line 154
    .local v0, "appSearchAdapter":Leqf;
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leqf;->a(Ljava/lang/String;)V

    .line 155
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

    .line 165
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->a(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    new-instance v1, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;-><init>()V

    .line 169
    .local v1, "detailFragment":Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(Z)V

    .line 1055
    iput-boolean v4, v1, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->d:Z

    .line 173
    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/android/search/consts/SubPager;->PAGE_DETAIL:Lcom/alibaba/android/search/consts/SubPager;

    invoke-interface {v2, v3, v4}, Lenx;->b(Lcom/alibaba/android/search/consts/SubPager;Z)V

    .line 176
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 177
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 1084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 1092
    iget v2, v2, Leoe;->b:I

    .line 179
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setEntry(I)V

    .line 181
    :cond_0
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setType(Ljava/lang/String;)V

    .line 182
    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 183
    invoke-static {}, Leqb;->b()V

    .line 184
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 160
    sget v0, Lemt$g;->search_light_app:I

    return v0
.end method

.method protected final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 1148
    iget-wide v0, v0, Leoe;->g:J

    .line 189
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1152
    iput-wide v2, v0, Leoe;->g:J

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->d()V

    .line 194
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->k:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 195
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->k:J

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(JI)V

    .line 197
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/OldBaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->b(Z)V

    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->c:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v4, v5, v0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(JI)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->f:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_OA:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->h:Leoe;

    .line 58
    const/16 v0, 0x14

    invoke-direct {p0, v4, v5, v0}, Lcom/alibaba/android/search/old/fragment/LightAppSearchFragment;->a(JI)V

    goto :goto_0
.end method
