.class public Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/PublicGroupSearchFragment;
.source "PublicGroupDetailSearchFragment.java"


# instance fields
.field private u:Z

.field private v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupSearchFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->u:Z

    .line 88
    new-instance v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->u:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->d()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 177
    sget v0, Lemt$g;->dt_public_group_conversation:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v0, v0, Leoe;->g:J

    .line 61
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2152
    iput-wide v2, v0, Leoe;->g:J

    .line 3103
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->u:Z

    if-nez v0, :cond_3

    .line 3106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->u:Z

    .line 3107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->a(I)V

    .line 3108
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    .line 3109
    new-instance v5, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3169
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    .line 3170
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 3169
    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v5, v0

    .line 3172
    :cond_2
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    .line 4084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 3172
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->o:I

    const/16 v4, 0x64

    invoke-interface/range {v0 .. v5}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    .line 66
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/PublicGroupSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->j()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->d()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->f:Lemz;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->f:Lemz;

    .line 1647
    iput-object v1, v0, Lemz;->e:Lcif;

    .line 49
    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->K:Lcif;

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/PublicGroupSearchFragment;->onDetach()V

    .line 52
    return-void
.end method
