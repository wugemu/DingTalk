.class public final Lgem;
.super Lgel;
.source "DentryGridUploadViewHolder.java"


# instance fields
.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lgel;-><init>(Landroid/view/View;I)V

    .line 44
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgem;->k:Landroid/widget/TextView;

    .line 46
    sget v0, Lfzs$f;->pb_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lgem;->l:Landroid/widget/ProgressBar;

    .line 47
    sget v0, Lfzs$f;->iftv_pause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 48
    sget v0, Lfzs$f;->iftv_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 49
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgem;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewType"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_dentry_grid_upload_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lgem;

    invoke-direct {v1, v0, p1}, Lgem;-><init>(Landroid/view/View;I)V

    return-object v1
.end method


# virtual methods
.method public final a(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 11
    .param p1, "viewModel"    # Lgeh;
    .param p2, "position"    # I
    .param p3, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 52
    .line 1065
    invoke-virtual {p0, p1, p3, p4}, Lgem;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 1066
    invoke-virtual {p0, v8}, Lgem;->a(Z)V

    .line 1069
    invoke-static {p1, p3}, Lgem;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 1070
    invoke-static {v3}, Lgpv;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    iget-object v4, p0, Lgem;->k:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    if-eqz v3, :cond_1

    .line 1078
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    .line 1079
    packed-switch v1, :pswitch_data_0

    .line 54
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 8148
    iget v0, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    .line 55
    .local v0, "bizMode":I
    :cond_2
    if-eqz v0, :cond_3

    .line 56
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 57
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 59
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_3
    return-void

    .line 1098
    .end local v0    # "bizMode":I
    :pswitch_0
    iget-object v1, p0, Lgem;->j:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1099
    iget-object v1, p0, Lgem;->j:Landroid/widget/TextView;

    sget v2, Lfzs$h;->cspace_upload_wait:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v1, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-static {v1, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 1102
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 1103
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1107
    :pswitch_1
    invoke-static {p1, p3}, Lgem;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_1

    .line 1112
    iget-object v3, p0, Lgem;->j:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1113
    iget-object v3, p0, Lgem;->j:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 1114
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    .line 2046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 1114
    aput-object v5, v4, v2

    const-string/jumbo v5, " / "

    aput-object v5, v4, v8

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 3046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 1114
    aput-object v5, v4, v0

    .line 1113
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v3, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-static {v3, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1117
    iget-object v3, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1119
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1120
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lfzs$h;->icon_suspend:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1121
    if-eqz p3, :cond_5

    .line 3160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 1121
    if-eqz v1, :cond_5

    .line 1122
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lgem$1;

    invoke-direct {v2, p0, p3, p1}, Lgem$1;-><init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    :goto_2
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 1133
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1117
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    .line 1129
    :cond_5
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 4137
    :pswitch_2
    invoke-static {p1, p3}, Lgem;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 4138
    if-eqz v1, :cond_1

    .line 4142
    iget-object v3, p0, Lgem;->j:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4143
    iget-object v3, p0, Lgem;->j:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 4144
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    .line 5046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 4144
    aput-object v5, v4, v2

    const-string/jumbo v5, " / "

    aput-object v5, v4, v8

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 6046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 4144
    aput-object v5, v4, v0

    .line 4143
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4146
    iget-object v3, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-static {v3, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4147
    iget-object v3, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4149
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4150
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v3, Lfzs$h;->icon_refresh:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 4152
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4154
    if-eqz p3, :cond_6

    .line 6160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 4154
    if-nez v1, :cond_8

    .line 4155
    :cond_6
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4156
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 4147
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_3

    .line 4160
    :cond_8
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lgem$2;

    invoke-direct {v2, p0, p3, p1}, Lgem$2;-><init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4167
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lgem$3;

    invoke-direct {v2, p0, p3, p1}, Lgem$3;-><init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 6176
    :pswitch_3
    invoke-static {p1, p3}, Lgem;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 6177
    if-eqz v3, :cond_1

    .line 6181
    sget v1, Lfzs$h;->cspace_upload_fail:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 6182
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 6183
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v2

    const-string/jumbo v1, " "

    aput-object v1, v4, v8

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadErrorMsg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6185
    :cond_9
    iget-object v4, p0, Lgem;->j:Landroid/widget/TextView;

    invoke-static {v4, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6186
    iget-object v4, p0, Lgem;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6188
    iget-object v1, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6189
    iget-object v4, p0, Lgem;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_b

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6191
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6192
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v3, Lfzs$h;->icon_refresh:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 6194
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 6196
    if-eqz p3, :cond_a

    .line 7160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 6196
    if-nez v1, :cond_c

    .line 6197
    :cond_a
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6198
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 6189
    :cond_b
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v1, v6

    goto :goto_4

    .line 6202
    :cond_c
    iget-object v1, p0, Lgem;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lgem$4;

    invoke-direct {v2, p0, p3, p1}, Lgem$4;-><init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6209
    iget-object v1, p0, Lgem;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lgem$5;

    invoke-direct {v2, p0, p3, p1}, Lgem$5;-><init>(Lgem;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1079
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
