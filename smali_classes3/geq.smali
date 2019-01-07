.class public final Lgeq;
.super Lgeo;
.source "DentryListViewHolder.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Z

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/CheckBox;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lgeo;-><init>(Landroid/view/View;I)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgeq;->C:Z

    .line 86
    sget v0, Lfzs$f;->rl_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    .line 88
    sget v0, Lfzs$f;->cb_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lgeq;->i:Landroid/widget/CheckBox;

    .line 89
    sget v0, Lfzs$f;->iftv_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 91
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->k:Landroid/widget/TextView;

    .line 92
    sget v0, Lfzs$f;->tv_path:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->l:Landroid/widget/TextView;

    .line 94
    sget v0, Lfzs$f;->ll_common_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgeq;->m:Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lfzs$f;->tv_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->n:Landroid/widget/TextView;

    .line 96
    sget v0, Lfzs$f;->tv_creator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->o:Landroid/widget/TextView;

    .line 97
    sget v0, Lfzs$f;->tv_modify_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->p:Landroid/widget/TextView;

    .line 99
    sget v0, Lfzs$f;->ll_online_edit_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgeq;->q:Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lfzs$f;->tv_online_edit_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 101
    sget v0, Lfzs$f;->tv_online_edit_creator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->s:Landroid/widget/TextView;

    .line 102
    sget v0, Lfzs$f;->tv_online_edit_creator_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->t:Landroid/widget/TextView;

    .line 103
    sget v0, Lfzs$f;->online_edit_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgeq;->u:Landroid/view/View;

    .line 104
    sget v0, Lfzs$f;->tv_online_edit_modify_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->v:Landroid/widget/TextView;

    .line 105
    sget v0, Lfzs$f;->tv_online_edit_modifier:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->w:Landroid/widget/TextView;

    .line 106
    sget v0, Lfzs$f;->tv_online_edit_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->x:Landroid/widget/TextView;

    .line 108
    sget v0, Lfzs$f;->tv_expire_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->y:Landroid/widget/TextView;

    .line 110
    sget v0, Lfzs$f;->ll_statistic_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgeq;->z:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lfzs$f;->tv_read_statistic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->A:Landroid/widget/TextView;

    .line 112
    sget v0, Lfzs$f;->tv_online_edit_statistics:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgeq;->B:Landroid/widget/TextView;

    .line 113
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgeq;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewType"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_dentry_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lgeq;

    invoke-direct {v1, v0, p1}, Lgeq;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 6
    .param p1, "tvUserName"    # Landroid/widget/TextView;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "itemFlag"    # I
    .param p5, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 498
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 503
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 510
    new-instance v5, Lgeq$5;

    invoke-direct {v5, p0, p2, p1}, Lgeq$5;-><init>(Lgeq;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 522
    .local v5, "listener":Lfzo$a;
    invoke-static {}, Lfzo;->a()Lfzo;

    move-result-object v0

    move-object v1, p5

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfzo;->a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lgeq;->m:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 387
    iget-object v0, p0, Lgeq;->p:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 388
    iget-object v0, p0, Lgeq;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 7
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "position"    # I
    .param p3, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 484
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v6

    .line 489
    .local v6, "spaceType":I
    invoke-static {v6}, Lgqu;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9184
    iget-boolean v0, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d:Z

    .line 489
    if-eqz v0, :cond_0

    .line 493
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "creator":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lgeq;->o:Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgeq;->a(Landroid/widget/TextView;Ljava/lang/String;IILandroid/content/Context;)V

    goto :goto_0

    .line 493
    .end local v2    # "creator":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lgeq;->i:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 572
    iget-object v0, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 573
    iget-object v0, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    return-void
.end method

.method private b(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 8
    .param p1, "viewModel"    # Lgeh;
    .param p2, "position"    # I
    .param p3, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 184
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v6

    .line 185
    .local v6, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-nez v6, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    if-eqz p3, :cond_2

    .line 4247
    :cond_2
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 4248
    iget-object v0, p0, Lgeq;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 4249
    iget-object v0, p0, Lgeq;->y:Landroid/widget/TextView;

    sget v1, Lfzs$h;->cspace_file_expired_date:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4250
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4268
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 4269
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lgeq;->C:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lgeq;->i:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 224
    iget-object v0, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0, p1, p3, p4}, Lgeq;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 226
    if-eqz p3, :cond_11

    .line 7160
    iget-object v0, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 226
    if-eqz v0, :cond_11

    .line 227
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lgeq$1;

    invoke-direct {v1, p0, p3, p1}, Lgeq$1;-><init>(Lgeq;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lgeq$2;

    invoke-direct {v1, p0, p3, p1}, Lgeq$2;-><init>(Lgeq;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 4273
    :cond_5
    iget-object v1, p0, Lgeq;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4274
    iget-object v1, p0, Lgeq;->l:Landroid/widget/TextView;

    invoke-static {v0}, Lgpv;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 197
    :cond_6
    invoke-static {v6}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4278
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 4279
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4283
    invoke-direct {p0, v0}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 4284
    invoke-direct {p0, v0, p2, p3, p4}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 201
    :cond_7
    invoke-static {v6}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4288
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 4289
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4293
    invoke-direct {p0, v0}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 4294
    invoke-direct {p0, v0, p2, p3, p4}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    goto :goto_1

    .line 4526
    :cond_8
    if-eqz v6, :cond_a

    invoke-static {v6}, Lgpr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getEditorCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    .line 205
    :goto_2
    if-eqz v0, :cond_c

    .line 5298
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    .line 5299
    if-eqz v7, :cond_4

    .line 5303
    iget-object v0, p0, Lgeq;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5305
    iget-object v0, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5306
    iget-object v0, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lfzs$h;->icon_group_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 5308
    iget-object v0, p0, Lgeq;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5309
    iget-object v1, p0, Lgeq;->s:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    move-object v0, p0

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgeq;->a(Landroid/widget/TextView;Ljava/lang/String;IILandroid/content/Context;)V

    .line 5311
    iget-object v0, p0, Lgeq;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5313
    iget-object v0, p0, Lgeq;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5315
    iget-object v0, p0, Lgeq;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5316
    iget-object v0, p0, Lgeq;->v:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgqh;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5318
    iget-object v0, p0, Lgeq;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5319
    iget-object v1, p0, Lgeq;->w:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    move-object v0, p0

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgeq;->a(Landroid/widget/TextView;Ljava/lang/String;IILandroid/content/Context;)V

    .line 5321
    iget-object v0, p0, Lgeq;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5322
    iget-object v0, p0, Lgeq;->x:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_list_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5392
    invoke-static {v7}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWaitingForEdit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5393
    iget-object v0, p0, Lgeq;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5326
    :cond_9
    iget-boolean v0, p0, Lgeq;->C:Z

    if-nez v0, :cond_4

    .line 5330
    invoke-direct {p0, p1, p3}, Lgeq;->c(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    .line 5398
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 5399
    if-eqz v0, :cond_4

    .line 5403
    invoke-static {v0}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5407
    iget-object v1, p0, Lgeq;->z:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 5408
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 5410
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUnFinishEditorCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 5411
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_im_space_online_edit_status_at:I

    .line 5412
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5413
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUnFinishEditorCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5411
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5419
    :goto_3
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5420
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    new-instance v2, Lgeq$3;

    invoke-direct {v2, p0, v0, p4}, Lgeq$3;-><init>(Lgeq;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 4526
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 5415
    :cond_b
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_im_space_online_edit_all_fill:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5416
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->alm_cmail_color_6_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 209
    :cond_c
    invoke-static {p1, p3}, Lgeq;->b(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v0

    .line 5530
    if-eqz v6, :cond_d

    if-nez v0, :cond_e

    .line 5531
    :cond_d
    const/4 v0, 0x0

    .line 209
    :goto_4
    if-eqz v0, :cond_10

    .line 6336
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 6337
    invoke-static {p1, p3}, Lgeq;->b(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v2

    .line 6338
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 6342
    iget-object v0, p0, Lgeq;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 6344
    iget-object v0, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 6345
    iget-object v0, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lfzs$h;->icon_lock_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 6347
    iget-object v0, p0, Lgeq;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 6348
    iget-object v1, p0, Lgeq;->s:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    move-object v0, p0

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgeq;->a(Landroid/widget/TextView;Ljava/lang/String;IILandroid/content/Context;)V

    .line 6350
    iget-object v0, p0, Lgeq;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 6351
    iget-object v0, p0, Lgeq;->x:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_local_edit_editing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6353
    iget-boolean v0, p0, Lgeq;->C:Z

    if-nez v0, :cond_4

    .line 6357
    invoke-direct {p0, p1, p3}, Lgeq;->c(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    goto/16 :goto_1

    .line 5533
    :cond_e
    invoke-static {v6}, Lgpr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5536
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v0

    .line 5537
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const-wide/32 v2, 0xb20f01

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 6361
    :cond_10
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 6362
    if-eqz v0, :cond_4

    .line 6366
    invoke-direct {p0, v0}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 6369
    iget-object v1, p0, Lgeq;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6370
    iget-object v1, p0, Lgeq;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 7046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 6370
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6372
    invoke-direct {p0, v0, p2, p3, p4}, Lgeq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 6374
    iget-boolean v0, p0, Lgeq;->C:Z

    if-nez v0, :cond_4

    .line 6378
    invoke-direct {p0, p1, p3}, Lgeq;->c(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    goto/16 :goto_1

    .line 241
    :cond_11
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0
.end method

.method private c(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V
    .locals 19
    .param p1, "viewModel"    # Lgeh;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    .line 439
    invoke-static/range {p1 .. p2}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    .line 440
    .local v5, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-nez v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lgqu;->a(Ljava/lang/String;)I

    move-result v11

    .line 445
    .local v11, "spaceType":I
    if-eqz p2, :cond_6

    .line 7184
    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d:Z

    .line 445
    if-eqz v15, :cond_6

    const/4 v4, 0x1

    .line 446
    .local v4, "admin":Z
    :goto_1
    const/4 v10, 0x0

    .line 447
    .local v10, "showReadStat":Z
    invoke-static {v11}, Lgqu;->g(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 448
    if-nez v4, :cond_2

    invoke-static {v5}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v10, 0x1

    .line 452
    :cond_3
    :goto_2
    if-eqz v10, :cond_0

    .line 456
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPreviewCount()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 8044
    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 457
    .local v8, "previewCount":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-gez v15, :cond_4

    .line 458
    const-wide/16 v8, 0x0

    .line 460
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadCount()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 9044
    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 461
    .local v6, "downLoadCount":J
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_5

    .line 462
    const-wide/16 v6, 0x0

    .line 464
    :cond_5
    add-long v12, v8, v6

    .line 465
    .local v12, "totalCount":J
    const-wide/16 v16, 0x3e7

    cmp-long v15, v12, v16

    if-lez v15, :cond_9

    const-string/jumbo v14, "999+"

    .line 467
    .local v14, "totalCountString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeq;->z:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lgpk;->a(Landroid/view/View;I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeq;->A:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lgpk;->a(Landroid/view/View;I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeq;->A:Landroid/widget/TextView;

    sget v16, Lfzs$h;->dt_cspace_filelist_readcount_label:I

    invoke-static/range {v16 .. v16}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    if-eqz p2, :cond_a

    .line 9160
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 471
    if-eqz v15, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeq;->A:Landroid/widget/TextView;

    new-instance v16, Lgeq$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgeq$4;-><init>(Lgeq;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 445
    .end local v4    # "admin":Z
    .end local v6    # "downLoadCount":J
    .end local v8    # "previewCount":J
    .end local v10    # "showReadStat":Z
    .end local v12    # "totalCount":J
    .end local v14    # "totalCountString":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 448
    .restart local v4    # "admin":Z
    .restart local v10    # "showReadStat":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 449
    :cond_8
    invoke-static {v11}, Lgqu;->d(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 450
    move v10, v4

    goto/16 :goto_2

    .line 465
    .restart local v6    # "downLoadCount":J
    .restart local v8    # "previewCount":J
    .restart local v12    # "totalCount":J
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 479
    .restart local v14    # "totalCountString":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeq;->A:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 7
    .param p1, "viewModel"    # Lgeh;
    .param p2, "position"    # I
    .param p3, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 116
    .line 1138
    iget-object v1, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    iget-object v1, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1141
    invoke-virtual {p0}, Lgeq;->a()V

    .line 1143
    iget-object v1, p0, Lgeq;->k:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v1, p0, Lgeq;->l:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1146
    iget-object v1, p0, Lgeq;->m:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1147
    iget-object v1, p0, Lgeq;->n:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1148
    iget-object v1, p0, Lgeq;->o:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1149
    iget-object v1, p0, Lgeq;->p:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1151
    iget-object v1, p0, Lgeq;->q:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1152
    iget-object v1, p0, Lgeq;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1153
    iget-object v1, p0, Lgeq;->s:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1154
    iget-object v1, p0, Lgeq;->t:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1155
    iget-object v1, p0, Lgeq;->u:Landroid/view/View;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1156
    iget-object v1, p0, Lgeq;->v:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1157
    iget-object v1, p0, Lgeq;->w:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1158
    iget-object v1, p0, Lgeq;->x:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1160
    iget-object v1, p0, Lgeq;->y:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1162
    iget-object v1, p0, Lgeq;->z:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1163
    iget-object v1, p0, Lgeq;->A:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1164
    iget-object v1, p0, Lgeq;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1166
    iget-object v1, p0, Lgeq;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    iget-object v1, p0, Lgeq;->i:Landroid/widget/CheckBox;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1169
    iget-object v1, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1170
    iget-object v1, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    invoke-virtual {p0, p1, p3, p4}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 1178
    invoke-static {p1, p3}, Lgeq;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 1179
    invoke-static {v1}, Lgpv;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    iget-object v4, p0, Lgeq;->k:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    if-eqz p3, :cond_1

    .line 2148
    iget v0, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    .line 120
    .local v0, "bizMode":I
    :goto_0
    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lgeq;->C:Z

    .line 121
    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-direct {p0}, Lgeq;->b()V

    .line 135
    :goto_2
    return-void

    .line 119
    .end local v0    # "bizMode":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .restart local v0    # "bizMode":I
    :cond_2
    move v1, v3

    .line 120
    goto :goto_1

    .line 123
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lgeq;->b(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    goto :goto_2

    .line 2543
    :pswitch_1
    iget-object v1, p0, Lgeq;->i:Landroid/widget/CheckBox;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2544
    if-eqz p3, :cond_3

    .line 2545
    invoke-virtual {p3, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b(Lgeh;)Lgei;

    move-result-object v1

    .line 2546
    if-eqz v1, :cond_3

    .line 2547
    iget-object v2, p0, Lgeq;->i:Landroid/widget/CheckBox;

    .line 3033
    iget-boolean v1, v1, Lgei;->b:Z

    .line 2547
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2551
    :cond_3
    iget-object v1, p0, Lgeq;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 2553
    iget-object v1, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2555
    if-eqz p3, :cond_4

    .line 3160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 2555
    if-nez v1, :cond_5

    .line 2556
    :cond_4
    iget-object v1, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2566
    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lgeq;->b(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    goto :goto_2

    .line 2558
    :cond_5
    iget-object v1, p0, Lgeq;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Lgeq$6;

    invoke-direct {v2, p0, p3, p1}, Lgeq$6;-><init>(Lgeq;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 129
    :pswitch_2
    invoke-direct {p0}, Lgeq;->b()V

    goto :goto_2

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
