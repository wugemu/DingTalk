.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceLinkShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Spinner;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->tv_link_gen:I

    if-ne v1, v2, :cond_3

    .line 126
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_sharelink_mainpage_create_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v11, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v12, 0x7

    .line 136
    .local v12, "expiredDays":I
    :goto_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;)V

    .line 176
    .local v0, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11, v12, v0}, Lgon;->a(Ljava/lang/String;Ljava/util/List;ILcma;)V

    goto :goto_0

    .line 134
    .end local v0    # "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;>;"
    .end local v12    # "expiredDays":I
    :cond_2
    const/16 v12, 0x1e

    goto :goto_1

    .line 177
    .end local v11    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->rl_share_link:I

    if-ne v1, v2, :cond_5

    .line 179
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_sharelink_mainpage_send_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 180
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->A:Z

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->u:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    .line 190
    invoke-static {v1, v6, v7}, Lgpx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getPassword()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getOrgName()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    .line 186
    invoke-static/range {v1 .. v10}, Lgpr;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->u:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lgpx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lgpr;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->rl_copy_link:I

    if-ne v1, v2, :cond_0

    .line 196
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_share_copy_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 197
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->A:Z

    if-eqz v1, :cond_6

    .line 199
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "  "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lfzs$h;->dt_space_link_extraction_code:I

    .line 204
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ": "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lfzs$h;->dt_space_copy_text_success_message:I

    .line 205
    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {p0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    sget v2, Lfzs$h;->dt_space_copy_text_success_message:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "SpaceLinkShareActivity"

    const-string/jumbo v5, "space_file_sharelink_mainpage"

    invoke-interface {v1, v4, v5, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    sget v1, Lfzs$g;->cspace_link_share_activity:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->setContentView(I)V

    .line 1338
    sget v1, Lfzs$f;->img_file_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    .line 1339
    sget v1, Lfzs$f;->rl_copy_link:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a:Landroid/widget/RelativeLayout;

    .line 1340
    sget v1, Lfzs$f;->rl_share_link:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b:Landroid/widget/RelativeLayout;

    .line 1341
    sget v1, Lfzs$f;->view_link_pass:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->c:Landroid/view/View;

    .line 1342
    sget v1, Lfzs$f;->tv_file_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e:Landroid/widget/TextView;

    .line 1343
    sget v1, Lfzs$f;->tv_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->f:Landroid/widget/TextView;

    .line 1344
    sget v1, Lfzs$f;->tv_link_author_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->g:Landroid/widget/TextView;

    .line 1345
    sget v1, Lfzs$f;->tv_org_name_belong:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->h:Landroid/widget/TextView;

    .line 1346
    sget v1, Lfzs$f;->spinner_expired_time_picker:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i:Landroid/widget/Spinner;

    .line 1347
    sget v1, Lfzs$f;->tv_expired_time:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->j:Landroid/widget/TextView;

    .line 1348
    sget v1, Lfzs$f;->tv_link_gen:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->k:Landroid/widget/TextView;

    .line 1349
    sget v1, Lfzs$f;->tv_link_url:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->l:Landroid/widget/TextView;

    .line 1350
    sget v1, Lfzs$f;->tv_link_pass:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->m:Landroid/widget/TextView;

    .line 1352
    sget v1, Lfzs$f;->tv_link_browser_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->n:Landroid/widget/TextView;

    .line 1353
    sget v1, Lfzs$f;->tv_link_download_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->o:Landroid/widget/TextView;

    .line 1355
    sget v1, Lfzs$f;->view_link_new_version:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->p:Landroid/view/View;

    .line 1356
    sget v1, Lfzs$f;->ll_link_old_version:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->q:Landroid/view/View;

    .line 1357
    sget v1, Lfzs$f;->tv_link:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->r:Landroid/widget/TextView;

    .line 1358
    sget v1, Lfzs$f;->tv_copy_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->s:Landroid/widget/TextView;

    .line 1360
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lfzs$h;->dt_space_link_share_file_out:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1363
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1364
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v4, Lfzs$g;->space_spinner_selected_item_layout:I

    sget v5, Lfzs$f;->tv_text:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    sget v7, Lfzs$h;->dt_group_setting_all_silent_time_7_day:I

    .line 1367
    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    sget v7, Lfzs$h;->dt_space_expired_time_duration_one_month:I

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v1, p0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1369
    sget v4, Lfzs$g;->space_spinner_item_layout:I

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1370
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "cspace_link_new_enable"

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->A:Z

    .line 113
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->A:Z

    if-eqz v1, :cond_9

    .line 2235
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->p:Landroid/view/View;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2236
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->q:Landroid/view/View;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 2289
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_link_share_model"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 2291
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    if-eqz v1, :cond_5

    .line 2292
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2293
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getFileLength()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-gtz v1, :cond_4

    .line 2295
    sget v1, Lfzs$f;->tr_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2301
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->k:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 2302
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->l:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2304
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getOrgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2305
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getCreatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2308
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2309
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->i:Landroid/widget/Spinner;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 2310
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->j:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2312
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->n:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_space_count_suffix:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getViewCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2313
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->o:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_space_count_suffix:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getDownloadCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2315
    sget v1, Lfzs$f;->ll_browser_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2316
    sget v1, Lfzs$f;->ll_download_count:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 2318
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    .line 2319
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getFileLength()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->u:J

    .line 2320
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    .line 2322
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getDentryType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2323
    const-string/jumbo v1, "folder"

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    .line 2326
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v4

    invoke-static {}, Lgqh;->a()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 2327
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 2328
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    :cond_3
    move v1, v2

    .line 2238
    :goto_2
    if-nez v1, :cond_0

    .line 2242
    const-string/jumbo v1, "dentry_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2244
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_6

    .line 2245
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->finish()V

    goto/16 :goto_0

    .line 2297
    :cond_4
    sget v1, Lfzs$f;->tr_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->y:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getFileLength()J

    move-result-wide v4

    .line 3046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 2298
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 2334
    goto :goto_2

    .line 2249
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    .line 2250
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->u:J

    .line 2251
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    .line 2252
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->s:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_space_link_copy_link_extraction:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2254
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;Z)V

    .line 2256
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;Z)V

    .line 2257
    const-string/jumbo v1, "folder"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2258
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    sget v4, Lfzs$e;->cspace_folder_icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2263
    :goto_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-gtz v1, :cond_8

    .line 2264
    sget v1, Lfzs$f;->tr_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    :goto_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 2272
    if-eqz v1, :cond_0

    .line 2276
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->g:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2278
    invoke-static {}, Lgpz;->a()Lgpz;

    invoke-static {}, Lgpz;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 2280
    if-eqz v1, :cond_0

    .line 2281
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->h:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2282
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-ne v1, v2, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$e;->cspace_org_auth_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v9, v9, v2, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2260
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2266
    :cond_8
    sget v1, Lfzs$f;->tr_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->x:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    .line 4046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 2267
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4213
    :cond_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->p:Landroid/view/View;

    invoke-static {v1, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 4214
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->q:Landroid/view/View;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 4216
    const-string/jumbo v1, "space_link_share_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    .line 4217
    const-string/jumbo v1, "file_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    .line 4218
    const-string/jumbo v1, "space_file_extension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->z:Ljava/lang/String;

    .line 4219
    const-string/jumbo v1, "dentry_size"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->u:J

    .line 4220
    const-string/jumbo v1, "space_folder_type_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    .line 4221
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->s:Landroid/widget/TextView;

    sget v2, Lfzs$h;->dt_cspace_fileshare_link_share_copy:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4223
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4225
    const-string/jumbo v1, "folder"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4226
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    sget v2, Lfzs$e;->cspace_folder_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4231
    :goto_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4228
    :cond_a
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceLinkShareActivity;->z:Ljava/lang/String;

    invoke-static {v2, v3}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 381
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 376
    return-void
.end method
