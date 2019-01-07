.class public Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;
.source "ExternalContactDetailSearchFragment.java"


# instance fields
.field private x:Z

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

    .line 103
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->y:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

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
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->d()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x64

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v5

    invoke-direct {v0, v1, v3, v5}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v0, v0, Leoe;->g:J

    .line 72
    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1152
    iput-wide v6, v0, Leoe;->g:J

    .line 76
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->r:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 77
    iget-wide v6, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->r:J

    .line 1194
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

    if-nez v0, :cond_3

    .line 1197
    iput-boolean v8, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

    .line 1198
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(I)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 1201
    new-instance v1, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$3;-><init>(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1251
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 1252
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 1251
    invoke-interface {v0, v1, v3, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1255
    :goto_0
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    .line 1265
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;-><init>()V

    .line 1266
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->keyword:Ljava/lang/String;

    .line 1267
    iget v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    iput v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->offset:I

    .line 1268
    iput v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->size:I

    .line 1269
    iget v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->s:I

    iput v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->scope:I

    .line 1270
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->t:Ljava/util/List;

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->followerStaffIds:Ljava/util/List;

    .line 1271
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->u:[J

    if-eqz v1, :cond_2

    .line 1272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->labelIds:Ljava/util/List;

    move v1, v2

    .line 1273
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->u:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1274
    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->labelIds:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->u:[J

    aget-wide v8, v4, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1255
    :cond_2
    invoke-interface {v3, v6, v7, v5, v0}, Lenb;->a(JLcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;Lcma;)V

    .line 81
    :cond_3
    :goto_2
    return-void

    .line 2118
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

    if-nez v0, :cond_3

    .line 2121
    iput-boolean v8, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->x:Z

    .line 2122
    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->a(I)V

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 2125
    new-instance v5, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2187
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v5, v0

    .line 2189
    :cond_5
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 3084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 2189
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    invoke-interface/range {v0 .. v5}, Lenb;->c(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/ExternalContactSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->j()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->d()V

    goto :goto_0
.end method
