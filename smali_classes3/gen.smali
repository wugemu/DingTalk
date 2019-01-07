.class public final Lgen;
.super Lgel;
.source "DentryGridViewHolder.java"


# instance fields
.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/CheckBox;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lgel;-><init>(Landroid/view/View;I)V

    .line 42
    sget v0, Lfzs$f;->rl_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    .line 43
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgen;->l:Landroid/widget/TextView;

    .line 44
    sget v0, Lfzs$f;->cb_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lgen;->m:Landroid/widget/CheckBox;

    .line 45
    sget v0, Lfzs$f;->iftv_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 46
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgen;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewType"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_dentry_grid_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lgen;

    invoke-direct {v1, v0, p1}, Lgen;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lgen;->m:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 134
    iget-object v0, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 135
    iget-object v0, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    return-void
.end method


# virtual methods
.method public final a(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 6
    .param p1, "viewModel"    # Lgeh;
    .param p2, "position"    # I
    .param p3, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    .line 1070
    invoke-virtual {p0, p1, p3, p4}, Lgen;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 1071
    invoke-virtual {p0, v5}, Lgen;->a(Z)V

    .line 1074
    invoke-static {p1, p3}, Lgen;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 1075
    invoke-static {v1}, Lgpv;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    iget-object v2, p0, Lgen;->l:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    if-eqz p3, :cond_1

    .line 1148
    iget v0, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    .line 52
    .local v0, "bizMode":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 63
    invoke-direct {p0}, Lgen;->a()V

    .line 66
    :goto_1
    return-void

    .line 51
    .end local v0    # "bizMode":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2080
    .restart local v0    # "bizMode":I
    :pswitch_0
    iget-object v1, p0, Lgen;->m:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 2082
    iget-object v1, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 2083
    iget-object v1, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v1, p1, p3, p4}, Lgen;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    .line 2085
    if-eqz p3, :cond_2

    .line 2160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 2085
    if-nez v1, :cond_3

    .line 2086
    :cond_2
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2087
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 2089
    :cond_3
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lgen$1;

    invoke-direct {v2, p0, p3, p1}, Lgen$1;-><init>(Lgen;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lgen$2;

    invoke-direct {v2, p0, p3, p1}, Lgen$2;-><init>(Lgen;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 3106
    :pswitch_1
    iget-object v1, p0, Lgen;->m:Landroid/widget/CheckBox;

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 3107
    if-eqz p3, :cond_4

    .line 3108
    invoke-virtual {p3, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b(Lgeh;)Lgei;

    move-result-object v1

    .line 3109
    if-eqz v1, :cond_4

    .line 3110
    iget-object v2, p0, Lgen;->m:Landroid/widget/CheckBox;

    .line 4033
    iget-boolean v1, v1, Lgei;->b:Z

    .line 3110
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3114
    :cond_4
    iget-object v1, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 3115
    iget-object v1, p0, Lgen;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3117
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3119
    if-eqz p3, :cond_5

    .line 4160
    iget-object v1, p3, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 3119
    if-nez v1, :cond_6

    .line 3120
    :cond_5
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 3122
    :cond_6
    iget-object v1, p0, Lgen;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lgen$3;

    invoke-direct {v2, p0, p3, p1}, Lgen$3;-><init>(Lgen;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 60
    :pswitch_2
    invoke-direct {p0}, Lgen;->a()V

    goto/16 :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
