.class public Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/DingSearchFragment;
.source "DingDetailSearchFragment.java"


# static fields
.field public static final q:Ljava/lang/String;

.field private static s:Lcom/alibaba/android/search/consts/SubPager;


# instance fields
.field private t:I

.field private u:Z

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->q:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->s:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;-><init>()V

    .line 31
    iput v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->t:I

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->u:Z

    .line 35
    new-instance v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->t:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->t:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->u:Z

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
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->d()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->s:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lemt$g;->search_ding:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Leoe;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v2, v2, Leoe;->g:J

    .line 65
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1152
    iput-wide v4, v2, Leoe;->g:J

    .line 69
    :cond_1
    invoke-virtual {p0, v6}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->a(I)V

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    .line 71
    .local v1, "searchingKey":Ljava/lang/String;
    iput v6, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->t:I

    .line 72
    iput-boolean v6, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->u:Z

    .line 73
    new-instance v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;Ljava/lang/String;)V

    .line 116
    .local v0, "searchTaskListener":Lcca;
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 117
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcca;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "searchTaskListener":Lcca;
    check-cast v0, Lcca;

    .line 119
    .restart local v0    # "searchTaskListener":Lcca;
    :cond_2
    iget v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v2, v7, v3, v0}, Lenu;->a(IILjava/lang/String;Lcca;)V

    .line 120
    iget v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v2, v7, v3, v0}, Lenu;->d(IILjava/lang/String;Lcca;)V

    .line 121
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/DingSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->j()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->d()V

    goto :goto_0
.end method
