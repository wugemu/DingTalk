.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "LanMeshFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:J

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    .line 343
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    .prologue
    .line 38
    .line 3378
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l()Lbsw$c;

    move-result-object v0

    .line 3379
    instance-of v1, v0, Lbsz;

    if-eqz v1, :cond_0

    .line 3380
    check-cast v0, Lbsz;

    invoke-virtual {v0}, Lbsz;->y()V

    .line 38
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "currentTips"    # Ljava/lang/String;
    .param p3, "nextMeshCode"    # I

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 349
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "currentTips"    # Ljava/lang/String;
    .param p3, "nextMeshCode"    # I
    .param p4, "fakeNextStatus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m()Lbsw$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1369
    const-string/jumbo v2, "<font color=\'#9f9f9f\' size=22px>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m()Lbsw$b;

    move-result-object v3

    invoke-interface {v3}, Lbsw$b;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    .line 2128
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a:Landroid/widget/ImageView;

    sget v2, Lbrx$c;->device_alpha_main_ap:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2129
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->b:Landroid/widget/ImageView;

    sget v1, Lbrx$c;->device_alpha_sta_ap:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m()Lbsw$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m()Lbsw$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lbsw$b;->m(Ljava/lang/String;)V

    .line 361
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbsz;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l()Lbsw$c;

    move-result-object v0

    check-cast v0, Lbsz;

    .line 2405
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbsz$5;

    invoke-direct {v2, v0, p3}, Lbsz$5;-><init>(Lbsz;I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_1
    return-void

    .line 1371
    :cond_2
    const-string/jumbo v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->n:J

    return-wide v0
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->p:Z

    return v0
.end method


# virtual methods
.method public final A()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    sget v2, Lbrx$d;->progress:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    .line 116
    sget v2, Lbrx$d;->tv_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->b:Landroid/widget/TextView;

    .line 117
    sget v2, Lbrx$d;->tv_sub_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    .line 118
    sget v2, Lbrx$d;->tv_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    .line 120
    sget v2, Lbrx$d;->layout_mesh_anim:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    .line 122
    sget v2, Lbrx$d;->layout_operate:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    .line 123
    sget v2, Lbrx$d;->tv_single:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    .line 124
    sget v2, Lbrx$d;->layout_double:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->h:Landroid/view/View;

    .line 125
    sget v2, Lbrx$d;->tv_left:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->i:Landroid/widget/TextView;

    .line 126
    sget v2, Lbrx$d;->tv_right:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->j:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget-object v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$9;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->b:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_alert_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l:I

    packed-switch v2, :pswitch_data_1

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_mesh_scan:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_mesh_fail:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_search_fail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Z)V

    .line 147
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->h:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->i:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_add_wds_cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->j:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_add_wds_retry:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->i:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "LanMeshFragment"

    const-string/jumbo v4, "alpha_mesh_fail"

    invoke-interface {v2, v3, v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "corpId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "mesh"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_MESH_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 180
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->j()Z

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setVisibility(I)V

    .line 182
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 183
    .local v0, "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_search_sucess:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    sget v3, Lbrx$g;->and_alpha_device_join_team_succ:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Z)V

    .line 189
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_i_know:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "LanMeshFragment"

    const-string/jumbo v4, "alpha_mesh_success"

    invoke-interface {v2, v3, v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_mesh_scan:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 207
    :pswitch_4
    sget v2, Lbrx$g;->dt_alpha_connection_created:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_bind_team_from_mesh:I

    .line 208
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-direct {p0, v2, v3, v6, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 212
    :pswitch_5
    sget v2, Lbrx$g;->dt_alpha_connection_created:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_syn_network_config_ongoing:I

    .line 213
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 212
    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 217
    :pswitch_6
    sget v2, Lbrx$g;->dt_alpha_connection_created:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_restart_wifi_ongoing:I

    .line 218
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 217
    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 227
    :pswitch_7
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->b:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_alert_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l:I

    packed-switch v2, :pswitch_data_2

    .line 326
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_scan_new_device:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_mesh_msg:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$8;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 230
    :pswitch_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_mesh_fail:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->d:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_search_fail:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Z)V

    .line 237
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->h:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->i:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_add_wds_cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->j:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_add_wds_retry:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->i:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "LanMeshFragment"

    const-string/jumbo v4, "alpha_manual_mesh_fail"

    invoke-interface {v2, v3, v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 289
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "corpId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "manualMesh"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_MESH_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 294
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_9
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c:Landroid/widget/TextView;

    sget v3, Lbrx$g;->and_alpha_mesh_count_succ:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Z)V

    .line 297
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    sget v3, Lbrx$g;->dt_alpha_i_know:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "LanMeshFragment"

    const-string/jumbo v4, "alpha_manual_mesh_success"

    invoke-interface {v2, v3, v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 310
    :pswitch_a
    sget v2, Lbrx$g;->and_alpha_mesh_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_bind_team_from_mesh:I

    .line 311
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-direct {p0, v2, v3, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 315
    :pswitch_b
    sget v2, Lbrx$g;->and_alpha_mesh_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_syn_network_config_ongoing:I

    .line 316
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 315
    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 320
    :pswitch_c
    sget v2, Lbrx$g;->and_alpha_mesh_count:I

    .line 321
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbrx$g;->dt_alpha_restart_wifi_ongoing:I

    .line 322
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 320
    invoke-direct {p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 135
    .line 138
    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_mesh_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_mesh_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l:I

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_corp_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_device_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->n:J

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "params_mesh_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    .line 104
    :cond_1
    const-string/jumbo v0, "LanMeshFragment"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mMeshCode = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", mMeshCorpId = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", mDeviceId = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->n:J

    .line 106
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", mMeshType = "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->k:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 107
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", mMeshCount = "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->o:I

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lbrx$e;->device_lan_mesh_fragment:I

    return v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
