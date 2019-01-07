.class public Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;
.source "GroupDetailSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;
    }
.end annotation


# instance fields
.field private u:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

.field private v:Z

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;-><init>()V

    .line 53
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->u:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->v:Z

    .line 121
    new-instance v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->w:Ljava/lang/Runnable;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;)Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->u:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->v:Z

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
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->d()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 276
    sget v0, Lemt$g;->my_group_conversation_new:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x64

    const/4 v8, 0x0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v5

    invoke-direct {v0, v2, v4, v5}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v4, v0, Leoe;->g:J

    .line 87
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2152
    iput-wide v4, v0, Leoe;->g:J

    .line 91
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$4;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->u:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_2
    :goto_0
    return-void

    .line 3138
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(I)V

    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    .line 3140
    new-instance v5, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3189
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcca;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v0, v5, v2, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcca;

    move-object v5, v0

    .line 3191
    :cond_3
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    move-object v4, v3

    .line 4141
    invoke-static/range {v0 .. v5}, Lenr;->a(IILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcca;)V

    goto :goto_0

    .line 4196
    :pswitch_1
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->v:Z

    if-nez v0, :cond_2

    .line 4199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->v:Z

    .line 4200
    invoke-virtual {p0, v8}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(I)V

    .line 4201
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    .line 4202
    new-instance v7, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$3;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$3;-><init>(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Ljava/lang/String;)V

    .line 4267
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4268
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcmb;

    .line 4269
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 4268
    invoke-interface {v0, v7, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmb;

    move-object v7, v0

    .line 4271
    :cond_4
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 5084
    iget-object v3, v0, Leoe;->a:Ljava/lang/String;

    .line 4271
    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    move v6, v1

    invoke-interface/range {v2 .. v7}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;IILcmb;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "search_my_group_use_server"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->u:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->j()V

    .line 69
    :goto_1
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->d()V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->f:Lemz;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->f:Lemz;

    .line 1647
    iput-object v1, v0, Lemz;->e:Lcif;

    .line 75
    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->K:Lcif;

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/GroupSearchFragment;->onDetach()V

    .line 78
    return-void
.end method
