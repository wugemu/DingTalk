.class public Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;
.source "ContactDetailSearchFragment.java"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private M:Ljava/lang/Runnable;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;-><init>()V

    .line 62
    iput v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 64
    iput-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->x:Z

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->y:Z

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->z:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->A:Z

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->B:Z

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->C:Z

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->D:Z

    .line 80
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->M:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->D:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->k()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->x:Z

    return v0
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 653
    iget-boolean v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->x:Z

    if-eqz v2, :cond_0

    .line 699
    :goto_0
    return-void

    .line 656
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->x:Z

    .line 657
    invoke-virtual {p0, v5}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 659
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 660
    .local v1, "searchingKey":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$8;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$8;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)V

    .line 695
    .local v0, "mApiEventListener":Lcma;
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 696
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mApiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 698
    .restart local v0    # "mApiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v2, v3, v5, v4, v0}, Lenb;->a(Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 0
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 714
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->d()V

    .line 183
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->c()V

    .line 192
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->M:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 703
    sget v0, Lemt$g;->act_title_contact:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 20

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Leoe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v4

    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Leoe;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 1148
    iget-wide v2, v2, Leoe;->g:J

    .line 121
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1152
    iput-wide v4, v2, Leoe;->g:J

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    packed-switch v2, :pswitch_data_0

    .line 170
    :cond_2
    :goto_0
    return-void

    .line 127
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->y:Z

    if-eqz v2, :cond_3

    .line 1224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 1226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1227
    new-instance v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;J)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1272
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcca;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcca;

    .line 1274
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v4, 0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lenu;->g(IILjava/lang/String;Lcca;)V

    goto :goto_0

    .line 130
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    goto :goto_0

    .line 135
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->z:Z

    if-eqz v2, :cond_4

    .line 1279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 1281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1282
    new-instance v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$3;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;J)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1329
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcca;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcca;

    .line 1331
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v4, 0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lenu;->f(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 138
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    goto/16 :goto_0

    .line 143
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->A:Z

    if-eqz v2, :cond_5

    .line 1336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 1338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1339
    new-instance v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$4;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;J)V

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1389
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcca;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcca;

    .line 1391
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v4, 0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lenu;->e(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    goto/16 :goto_0

    .line 151
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->B:Z

    if-eqz v2, :cond_6

    .line 1396
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 1398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1399
    new-instance v3, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$5;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;J)V

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1446
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcca;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcca;

    .line 1448
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v4, 0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 2112
    invoke-static {v3, v4, v5, v2}, Lenr;->a(IILjava/lang/String;Lcca;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    goto/16 :goto_0

    .line 159
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->C:Z

    if-eqz v2, :cond_e

    .line 2453
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->s:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 2454
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->s:J

    .line 2558
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    if-nez v2, :cond_2

    .line 2561
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    .line 2562
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 2565
    new-instance v10, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$7;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)V

    .line 2635
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2636
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcmb;

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2636
    invoke-interface {v2, v10, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcmb;

    move-object v10, v2

    .line 2639
    :cond_7
    const-string/jumbo v2, "0"

    .line 2640
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "open_new_global_search"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2639
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2641
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 3084
    iget-object v4, v2, Leoe;->a:Ljava/lang/String;

    .line 2641
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v9, 0x64

    invoke-interface/range {v3 .. v10}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JIILcma;)V

    goto/16 :goto_0

    .line 2643
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v2, :cond_9

    .line 2644
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 4084
    iget-object v12, v2, Leoe;->a:Ljava/lang/String;

    .line 2644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v18, v0

    move-wide v14, v6

    move-object/from16 v19, v10

    invoke-interface/range {v11 .. v19}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto/16 :goto_0

    .line 2646
    :cond_9
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 5084
    iget-object v4, v2, Leoe;->a:Ljava/lang/String;

    .line 2646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    const/16 v9, 0x64

    invoke-interface/range {v3 .. v10}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcmb;)V

    goto/16 :goto_0

    .line 5462
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    if-nez v2, :cond_2

    .line 5465
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->w:Z

    .line 5466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(I)V

    .line 5468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    .line 5469
    new-instance v7, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$6;-><init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)V

    .line 5540
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 5541
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcmb;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v7, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcmb;

    move-object v7, v2

    .line 5544
    :cond_b
    const-string/jumbo v2, "0"

    .line 5545
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "open_new_global_search"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5544
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5546
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 6084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 5546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    const/16 v6, 0x64

    invoke-interface/range {v2 .. v7}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;IILcmb;)V

    goto/16 :goto_0

    .line 5548
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v2, :cond_d

    .line 5549
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 7084
    iget-object v10, v2, Leoe;->a:Ljava/lang/String;

    .line 5549
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    const/16 v15, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->F:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-interface/range {v9 .. v17}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    goto/16 :goto_0

    .line 5551
    :cond_d
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 8084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 5551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->E:Ljava/lang/String;

    const/16 v6, 0x64

    invoke-interface/range {v2 .. v7}, Lenb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcmb;)V

    goto/16 :goto_0

    .line 162
    :cond_e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    goto/16 :goto_0

    .line 167
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->c()V

    goto/16 :goto_0

    :cond_f
    move-object v2, v3

    goto/16 :goto_4

    :cond_10
    move-object v2, v3

    goto/16 :goto_3

    :cond_11
    move-object v2, v3

    goto/16 :goto_2

    :cond_12
    move-object v2, v3

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->v:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    .line 106
    iget-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->D:Z

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->k()V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->d()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_show_alia_contacts"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->y:Z

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_common_friends"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->z:Z

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_friends"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->A:Z

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_local_contact"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->B:Z

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "show_org_contact"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->C:Z

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->D:Z

    .line 94
    return-void
.end method
