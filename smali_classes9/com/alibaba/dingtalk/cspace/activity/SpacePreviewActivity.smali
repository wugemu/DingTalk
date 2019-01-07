.class public Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
.super Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;
.source "SpacePreviewActivity.java"

# interfaces
.implements Lgfs$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

.field private B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

.field private C:Landroid/os/Handler;

.field private D:Lgqm;

.field private E:Lgqm;

.field private F:Lgqm;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:J

.field private O:Z

.field private P:Landroid/content/BroadcastReceiver;

.field private Q:I

.field private R:Z

.field private S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private U:Landroid/widget/ImageView;

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:J

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:J

.field private ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Lgmb;

.field private aj:Lgmc;

.field private ak:Lgfs$a;

.field private al:J

.field private am:Z

.field private b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

.field private d:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private e:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:J

.field private p:I

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:I

.field private x:Lgfu;

.field private y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field private z:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;-><init>()V

    .line 147
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m:Ljava/lang/String;

    .line 150
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->p:I

    .line 159
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    .line 161
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    .line 167
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    .line 169
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->F:Lgqm;

    .line 170
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    .line 172
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->I:Z

    .line 173
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->J:Z

    .line 174
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->K:Z

    .line 175
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->L:Ljava/lang/String;

    .line 195
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Z:Z

    .line 197
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aa:Z

    .line 200
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ac:Z

    .line 202
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ae:Z

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->af:J

    .line 205
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ah:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, p1}, Lgpk;->a(Landroid/view/View;I)V

    .line 591
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h()V

    .line 593
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 6141
    :goto_0
    iput-boolean v0, v1, Lgfu;->l:Z

    .line 597
    :cond_0
    if-eqz p1, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->p()V

    .line 602
    :goto_1
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 600
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o()V

    goto :goto_1
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "wd"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1172
    if-eqz p0, :cond_0

    .line 1173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1174
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 118
    .line 19821
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19824
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    .line 19825
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 19826
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19827
    :cond_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 19828
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .param p2, "x2"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V

    return-void
.end method

.method private a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V
    .locals 8
    .param p1, "menuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .param p2, "isHandleRedNot"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x122

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1185
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d()V

    .line 1194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->E:Lgqm;

    .line 1196
    const-string/jumbo v1, "folder"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1198
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v7, v1}, Lgma;->a(ILcom/alibaba/alimei/cspace/model/DentryModel;)Lgqm;

    move-result-object v0

    .line 1200
    .local v0, "menuObjectSave":Lgqm;
    invoke-virtual {p1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1201
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r()V

    goto :goto_0

    .line 12209
    .end local v0    # "menuObjectSave":Lgqm;
    :cond_2
    new-instance v1, Lgma$a;

    invoke-direct {v1}, Lgma$a;-><init>()V

    .line 12210
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    iput v4, v1, Lgma$a;->a:I

    .line 12211
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    iput-wide v4, v1, Lgma$a;->b:J

    .line 12212
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    iput-object v4, v1, Lgma$a;->c:Ljava/lang/String;

    .line 12213
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    iput-boolean v4, v1, Lgma$a;->d:Z

    .line 12214
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    iput-boolean v4, v1, Lgma$a;->e:Z

    .line 12215
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfzv;->l(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lgma$a;->f:I

    .line 12216
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v4, v1, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12217
    iput v2, v1, Lgma$a;->h:I

    .line 12218
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->am:Z

    iput-boolean v4, v1, Lgma$a;->i:Z

    .line 12220
    invoke-static {v1}, Lgma;->a(Lgma$a;)Ljava/util/List;

    move-result-object v5

    .line 12221
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    .line 12262
    if-eqz v1, :cond_3

    if-nez v5, :cond_b

    .line 13278
    :cond_3
    :goto_1
    if-eqz v5, :cond_f

    .line 13282
    const-string/jumbo v1, "action_file_local_edit"

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 13283
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->v:Z

    .line 13284
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    .line 13285
    const-string/jumbo v1, "action_file_local_edit"

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13297
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o()V

    .line 12224
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    invoke-static {v1}, Lgqu;->d(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_10

    move v1, v2

    .line 12225
    :goto_3
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    invoke-static {v4}, Lgqu;->d(I)Z

    move-result v4

    if-nez v4, :cond_11

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e:I

    if-ne v4, v6, :cond_11

    move v4, v2

    .line 12227
    :goto_4
    if-eqz v5, :cond_6

    .line 12228
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->I:Z

    if-nez v6, :cond_4

    .line 12229
    const-string/jumbo v6, "action_file_send_as_email"

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12231
    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ac:Z

    if-eqz v1, :cond_6

    .line 12233
    :cond_5
    const-string/jumbo v1, "action_file_rename"

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12234
    const-string/jumbo v1, "action_file_re_path"

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12235
    const-string/jumbo v1, "action_file_delete"

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12239
    :cond_6
    invoke-static {v5, v2}, Lgma;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 12240
    if-eqz v4, :cond_7

    .line 12241
    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lgpr;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lgpr;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12245
    :cond_7
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1, p1, v2, v4}, Lgma;->b(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 12247
    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->E:Lgqm;

    .line 12248
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->E:Lgqm;

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    .line 12249
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->E:Lgqm;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 12250
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_new"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v3, v2

    :cond_8
    iput-boolean v3, v1, Lgqm;->e:Z

    .line 12252
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v1

    .line 12253
    if-eqz v1, :cond_a

    .line 12254
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    .line 12257
    :cond_a
    invoke-virtual {p1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setForceDisableSortMenuItem(Z)V

    .line 12258
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r()V

    goto/16 :goto_0

    .line 12265
    :cond_b
    const-string/jumbo v1, "action_file_download"

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "action_file_open"

    .line 12266
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12269
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v1}, Lgfs$a;->c()Landroid/util/Pair;

    move-result-object v1

    .line 12270
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 13022
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 12270
    if-eqz v1, :cond_c

    move v1, v2

    .line 12271
    :goto_5
    if-nez v1, :cond_3

    .line 12272
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "action_file_open"

    :goto_6
    invoke-interface {v5, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    move v1, v3

    .line 12270
    goto :goto_5

    .line 12272
    :cond_d
    const-string/jumbo v1, "action_file_download"

    goto :goto_6

    .line 13287
    :cond_e
    const-string/jumbo v1, "action_file_online_edit"

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13288
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->v:Z

    .line 13289
    iput v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    .line 13290
    const-string/jumbo v1, "action_file_online_edit"

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 13293
    :cond_f
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->v:Z

    .line 13294
    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    goto/16 :goto_2

    :cond_10
    move v1, v3

    .line 12224
    goto/16 :goto_3

    :cond_11
    move v4, v3

    .line 12225
    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Landroid/os/Message;)Z
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x1e

    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    .line 18834
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18968
    :cond_0
    :goto_0
    return v0

    .line 18840
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 18880
    :sswitch_0
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "4"

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 18881
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 18884
    if-eqz v1, :cond_14

    .line 18885
    const-string/jumbo v2, "intent_key_preview_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    .line 19050
    :goto_1
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19051
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "1040"

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19052
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1030"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18970
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i()V

    move v0, v7

    .line 118
    goto :goto_0

    .line 18842
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->finish()V

    goto :goto_2

    .line 18845
    :sswitch_2
    sget v0, Lfzs$h;->delete_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_2

    .line 18848
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_0

    .line 18851
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 18852
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 18853
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 18854
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 18855
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18856
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 18857
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18859
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18860
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18864
    :sswitch_4
    sget v0, Lfzs$h;->cspace_rename_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_2

    .line 18867
    :sswitch_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 18868
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18871
    :sswitch_6
    sget v0, Lfzs$h;->cspace_repath_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 18874
    :sswitch_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    sget v1, Lfzs$h;->cspace_preview_too_large:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18877
    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v0, v8, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 19056
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19058
    :cond_4
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "4"

    const-string/jumbo v4, "1041"

    invoke-interface {v1, v2, v3, v4, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19059
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1999"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19062
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v3, "20001"

    const-string/jumbo v4, "previewUrl"

    const-string/jumbo v5, "get empty previewUrl"

    move v2, v0

    invoke-static/range {v0 .. v5}, Lgoq;->c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19063
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v0, v8, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 19116
    :cond_5
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->p:I

    if-eq v2, v7, :cond_6

    .line 19120
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Z:Z

    if-eqz v2, :cond_8

    .line 19121
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->X:Z

    if-eqz v2, :cond_6

    .line 19122
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->n()V

    .line 19070
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-nez v2, :cond_7

    .line 19071
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19072
    new-instance v2, Lgfv;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v4, v1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->urlType:I

    invoke-direct {v2, v3, v4}, Lgfv;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    .line 19082
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ab:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q:Landroid/view/View;

    invoke-virtual {v2, p0, v3, v4, v5}, Lgfu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    .line 19083
    if-nez v2, :cond_b

    .line 19084
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "4"

    const-string/jumbo v4, "1042"

    invoke-interface {v1, v2, v3, v4, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19085
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1030"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19087
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v3, "20002"

    const-string/jumbo v4, "previewUrl"

    const-string/jumbo v5, "webview init error"

    move v2, v0

    invoke-static/range {v0 .. v5}, Lgoq;->c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19088
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v0, v8, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 19127
    :cond_8
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v2}, Lgfs$a;->e()V

    goto :goto_3

    .line 19074
    :cond_9
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19075
    new-instance v2, Lgfr;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v2, v3}, Lgfr;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    goto :goto_4

    .line 19078
    :cond_a
    new-instance v2, Lgfu;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v2, v3}, Lgfu;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    goto :goto_4

    .line 19090
    :cond_b
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "4"

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 19091
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    .line 19137
    iput-object v2, v0, Lgfu;->m:Lgfu$a;

    .line 19106
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0, v1, v2, v3}, Lgfu;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V

    goto/16 :goto_2

    .line 18891
    :sswitch_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    .line 18893
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 18894
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 18895
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a()V

    move v0, v7

    .line 18896
    goto/16 :goto_0

    .line 18899
    :cond_c
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 18900
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18901
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 18902
    sget v2, Lfzs$h;->cspace_file_download_path:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcms;->a(Ljava/lang/String;I)V

    .line 18903
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->F:Lgqm;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    goto/16 :goto_2

    .line 18905
    :cond_d
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    .line 18907
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    move-object v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateDownloadInfo(JLjava/lang/String;J)V

    goto/16 :goto_2

    .line 18910
    :cond_e
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    goto/16 :goto_2

    .line 18914
    :sswitch_a
    sget v0, Lfzs$h;->cspace_info_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18915
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18916
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 18917
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Ljava/lang/String;)V

    move v0, v7

    .line 18918
    goto/16 :goto_0

    .line 18921
    :cond_f
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 18922
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18921
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18926
    :sswitch_b
    sget v0, Lfzs$h;->cspace_no_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18927
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 18928
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 18929
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Ljava/lang/String;)V

    move v0, v7

    .line 18930
    goto/16 :goto_0

    .line 18932
    :cond_10
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 18933
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18932
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18936
    :sswitch_c
    sget v0, Lfzs$h;->cspace_file_donot_exist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18937
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18938
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 18939
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Ljava/lang/String;)V

    move v0, v7

    .line 18940
    goto/16 :goto_0

    .line 18943
    :cond_11
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 18944
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18943
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18948
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 18949
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 18954
    :goto_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 18955
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 18956
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Ljava/lang/String;)V

    move v0, v7

    .line 18957
    goto/16 :goto_0

    .line 18951
    :cond_12
    sget v0, Lfzs$h;->cspace_file_donot_exist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 18960
    :cond_13
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 18961
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18960
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18965
    :sswitch_e
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m()V

    goto/16 :goto_2

    :cond_14
    move-object v1, v6

    goto/16 :goto_1

    .line 18840
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_8
        0x66 -> :sswitch_7
        0x68 -> :sswitch_9
        0x6a -> :sswitch_e
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_c
        0x6e -> :sswitch_d
        0x522 -> :sswitch_3
        0x523 -> :sswitch_1
        0x524 -> :sswitch_5
        0x525 -> :sswitch_4
        0x526 -> :sswitch_2
        0x527 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->R:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->X:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lgqm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->E:Lgqm;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    return-object v0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 495
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 496
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getAllMenuCount()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getBottomMenuMax()I

    move-result v5

    if-le v4, v5, :cond_2

    move v0, v1

    .line 498
    .local v0, "isShowMoreButton":Z
    :goto_0
    if-nez v0, :cond_0

    .line 499
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v4, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 502
    :cond_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 503
    invoke-static {p0, v4, v5}, Lgpr;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 504
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 505
    .local v1, "isShowPrintTip":Z
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v4, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 506
    return-void

    .end local v0    # "isShowMoreButton":Z
    .end local v1    # "isShowPrintTip":Z
    :cond_2
    move v0, v2

    .line 496
    goto :goto_0

    .restart local v0    # "isShowMoreButton":Z
    :cond_3
    move v1, v2

    .line 504
    goto :goto_1

    .restart local v1    # "isShowPrintTip":Z
    :cond_4
    move v2, v3

    .line 505
    goto :goto_2
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    return v0
.end method

.method private i()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 541
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 5585
    :cond_1
    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    move v1, v4

    .line 545
    :goto_1
    if-eqz v1, :cond_4

    .line 547
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 548
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 549
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 5585
    goto :goto_1

    .line 553
    :cond_3
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(I)V

    goto :goto_0

    .line 558
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 560
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 561
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-static {v1, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 562
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(I)V

    goto :goto_0

    .line 566
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q:Landroid/view/View;

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 568
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->R:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v5, 0xb4

    invoke-virtual {v1, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 569
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v1}, Lgfs$a;->c()Landroid/util/Pair;

    move-result-object v0

    .line 570
    .local v0, "isOnlinePreviewResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 570
    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 571
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 573
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    :cond_7
    move-object v4, v1

    move v1, v3

    .line 575
    :goto_2
    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 581
    .end local v0    # "isOnlinePreviewResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    :goto_3
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h:Z

    if-eqz v1, :cond_a

    :goto_4
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(I)V

    goto/16 :goto_0

    .line 575
    .restart local v0    # "isOnlinePreviewResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    :cond_8
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    if-ne v5, v4, :cond_7

    move-object v4, v1

    move v1, v2

    goto :goto_2

    .line 578
    .end local v0    # "isOnlinePreviewResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    :cond_9
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v2, v3

    .line 581
    goto :goto_4
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    return v0
.end method

.method private j()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 654
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    if-nez v1, :cond_1

    .line 655
    new-instance v1, Lgqm;

    const/16 v2, 0xa

    sget v3, Lfzs$h;->icon_download:I

    new-array v4, v10, [Ljava/lang/String;

    sget v5, Lfzs$h;->cspace_menu_download:I

    .line 656
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "("

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 7046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 656
    aput-object v5, v4, v8

    const-string/jumbo v5, ")"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    iget-object v0, v1, Lgqm;->d:Ljava/lang/String;

    .line 660
    .local v0, "oldMenuName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    new-array v2, v10, [Ljava/lang/String;

    sget v3, Lfzs$h;->cspace_menu_download:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "("

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 661
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    .line 8046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 661
    aput-object v3, v2, v8

    const-string/jumbo v3, ")"

    aput-object v3, v2, v9

    .line 660
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgqm;->d:Ljava/lang/String;

    .line 662
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    iget-object v1, v1, Lgqm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    iget v2, v2, Lgqm;->a:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->D:Lgqm;

    iget-object v3, v3, Lgqm;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k:J

    return-wide v0
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 731
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v0}, Lgfs$a;->b()V

    .line 732
    return-void
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 739
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 740
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    sget v4, Lfzs$h;->space_file_preview:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :goto_0
    const-string/jumbo v1, "folder"

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 748
    sget v7, Lfzs$e;->cspace_folder_icon:I

    .line 753
    .local v7, "iconResourceId":I
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v8

    .line 754
    .local v8, "expireTime":J
    cmp-long v1, v8, v12

    if-lez v1, :cond_7

    sget v1, Lfzs$h;->cspace_file_expired_date:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "fileTips":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8096
    if-eqz v7, :cond_0

    iget v5, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->h:I

    if-eq v5, v7, :cond_0

    .line 8097
    iput v7, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->h:I

    .line 8098
    iget-object v5, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8100
    :cond_0
    iget-object v5, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8101
    iget-object v1, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    invoke-static {v1, v11}, Lgpk;->a(Landroid/view/View;I)V

    .line 8102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8103
    iget-object v1, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v1, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 758
    :goto_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 761
    .local v2, "operatorId":J
    cmp-long v1, v2, v12

    if-nez v1, :cond_2

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 764
    :cond_2
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 780
    .local v6, "listener":Lcma;, "Lcma<Lggf;>;"
    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lggb;->a(Landroid/app/Activity;JJLcma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v2    # "operatorId":J
    .end local v6    # "listener":Lcma;, "Lcma<Lggf;>;"
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 788
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 789
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 788
    invoke-static {v1, v4, v5}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    .line 790
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 791
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcma;

    .line 812
    .local v10, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v10}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 815
    .end local v10    # "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    return-void

    .line 742
    .end local v0    # "fileTips":Ljava/lang/String;
    .end local v7    # "iconResourceId":I
    .end local v8    # "expireTime":J
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 750
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "iconResourceId":I
    goto/16 :goto_1

    .line 754
    .restart local v8    # "expireTime":J
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 8105
    .restart local v0    # "fileTips":Ljava/lang/String;
    :cond_8
    iget-object v1, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8106
    iget-object v1, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-static {v1, v11}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 782
    .restart local v2    # "operatorId":J
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    return-wide v0
.end method

.method private m()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 975
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aa:Z

    .line 977
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCommentCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->af:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCommentCount(J)V

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 982
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ag:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLastCommentId(Ljava/lang/String;)V

    .line 985
    :cond_1
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 986
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    .line 990
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v5}, Lgpt;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    .line 992
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h:Z

    .line 994
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 996
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v5, "cspace_preview"

    invoke-interface {v2, v5}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->remove(Ljava/lang/String;)V

    .line 997
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->d()V

    .line 999
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 1002
    invoke-static {}, Lgpz;->a()Lgpz;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpz;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1003
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .line 8646
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v3, v11}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 8647
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 8648
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 8649
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    invoke-static {v3, v11}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 8650
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-static {v3, v11}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 8651
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v3, :cond_3

    .line 8652
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8654
    :cond_3
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lfzs$h;->dt_file_decrypt_error_dismission:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_4
    :goto_0
    return-void

    .line 1007
    :cond_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1009
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r()V

    .line 1011
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 1013
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v2, v12}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(I)Z

    move-result v1

    .line 9514
    .local v1, "isNeedDownLoad":Z
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 9515
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x5

    cmp-long v2, v6, v8

    if-gez v2, :cond_8

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ah:Z

    if-eqz v2, :cond_8

    move v0, v3

    .line 1016
    .local v0, "autoDownload":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 1017
    if-eqz v0, :cond_9

    .line 1018
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b()V

    .line 1037
    .end local v0    # "autoDownload":Z
    .end local v1    # "isNeedDownLoad":Z
    :cond_6
    :goto_2
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    if-nez v2, :cond_7

    .line 1038
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v2}, Lgfs$a;->d()V

    .line 1041
    :cond_7
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    if-nez v2, :cond_4

    .line 1042
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v2}, Lgfs$a;->f()V

    goto :goto_0

    .restart local v1    # "isNeedDownLoad":Z
    :cond_8
    move v0, v4

    .line 9519
    goto :goto_1

    .line 1020
    .restart local v0    # "autoDownload":Z
    :cond_9
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setMustShowDownload(Z)V

    .line 1021
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v2, v12}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(I)Z

    goto :goto_2

    :cond_a
    move v2, v4

    .line 1020
    goto :goto_3

    .line 1026
    .end local v0    # "autoDownload":Z
    .end local v1    # "isNeedDownLoad":Z
    :cond_b
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->setVisibility(I)V

    .line 1027
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v2, v11}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 1028
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v2, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 1029
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j()V

    .line 1030
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 1031
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l()V

    .line 9674
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v5, "cspace_preview"

    const-string/jumbo v6, "3"

    invoke-interface {v2, v5, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 9677
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9678
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v4, "cspace_preview"

    const-string/jumbo v5, "3"

    const-string/jumbo v6, "1030"

    invoke-interface {v2, v4, v5, v6, v10}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9679
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    const-string/jumbo v4, "1020"

    invoke-virtual {v2, v4, v10}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V

    .line 1034
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h()V

    goto/16 :goto_2

    .line 9683
    :cond_d
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v2}, Lgfs$a;->c()Landroid/util/Pair;

    move-result-object v5

    .line 9684
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 10022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 9684
    if-nez v2, :cond_e

    .line 9685
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v4, "cspace_preview"

    const-string/jumbo v6, "3"

    const-string/jumbo v7, "1031"

    invoke-interface {v2, v4, v6, v7, v10}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9686
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    const-string/jumbo v4, "1021"

    invoke-virtual {v2, v4, v10}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9688
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 10600
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    .line 10505
    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    if-eqz v4, :cond_c

    .line 10509
    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 9692
    :cond_e
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9715
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->K:Z

    if-eqz v2, :cond_f

    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 9716
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k()V

    goto :goto_4

    .line 9718
    :cond_f
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v4, "cspace_preview"

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->remove(Ljava/lang/String;)V

    .line 9719
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->d()V

    .line 9720
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v2, v3, v10}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto :goto_4
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    return-object v0
.end method

.method private n()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 1137
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    .line 1139
    .local v4, "orgId":J
    cmp-long v7, v4, v10

    if-gtz v7, :cond_0

    .line 1140
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcoc;->b(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1143
    :cond_0
    cmp-long v7, v4, v10

    if-gtz v7, :cond_1

    .line 1144
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfzv;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 1147
    :cond_1
    cmp-long v7, v4, v10

    if-lez v7, :cond_2

    .line 1148
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const/16 v7, 0x10

    invoke-static {v7}, Lcms;->b(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1155
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lfzs$c;->uidic_global_color_c5:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lfzs$c;->window_background:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-static {p0, v3, v7, v8, v9}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1157
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1158
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    invoke-static {v7, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1167
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1168
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1169
    return-void

    .line 1150
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1151
    .local v1, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, ""

    goto :goto_0

    .line 1160
    .end local v1    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_4
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 1161
    .local v6, "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->f()Ljava/lang/String;

    move-result-object v7

    .line 11217
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1162
    invoke-virtual {v6, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfzs$c;->uidic_global_color_c5:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 12142
    iput v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 12146
    iput v12, v6, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 1165
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    invoke-static {v7, v6}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1301
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->w:I

    if-nez v0, :cond_1

    .line 1302
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->p()V

    .line 1328
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->t:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1334
    return-void
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    return v0
.end method

.method private q()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1340
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->setVisibility(I)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 1342
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aa:Z

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setMorePower(Z)V

    .line 1343
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setIsFromConversation(Z)V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1347
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 13319
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 13320
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 13321
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(I)V

    .line 1347
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/widget/TextView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1353
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(I)Z

    .line 1355
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r()V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .line 14866
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v2, :cond_1

    .line 14867
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setVisibility(I)V

    .line 14870
    :cond_1
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->l:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 14871
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14872
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1343
    goto :goto_0

    .line 1350
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 14311
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 14312
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 14313
    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(I)V

    .line 1350
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/widget/TextView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    goto :goto_1
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r()V

    return-void
.end method

.method private r()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1363
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aj:Lgmc;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->f:Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    iput v1, v0, Lgmb;->c:I

    .line 1368
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->h:Ljava/lang/String;

    .line 1369
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aj:Lgmc;

    invoke-virtual {v0}, Lgmc;->a()V

    .line 1420
    :goto_0
    return-void

    .line 1373
    :cond_0
    new-instance v0, Lgmb;

    invoke-direct {v0}, Lgmb;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    .line 1374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->G:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->g:Ljava/lang/String;

    .line 1375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->M:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->b:Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->H:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->h:Ljava/lang/String;

    .line 1377
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    iput-object v1, v0, Lgmb;->f:Ljava/lang/String;

    .line 1378
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgmb;->e:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    iput-wide v2, v0, Lgmb;->d:J

    .line 1381
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    iput v1, v0, Lgmb;->c:I

    .line 1382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iput-boolean v4, v0, Lgmb;->l:Z

    .line 1383
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iput v4, v0, Lgmb;->o:I

    .line 1384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->al:J

    iput-wide v2, v0, Lgmb;->s:J

    .line 1386
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    iput-object v1, v0, Lgmb;->q:Lgmb$b;

    .line 1418
    new-instance v0, Lgmc;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ai:Lgmb;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v0, p0, v1, v2}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aj:Lgmc;

    .line 1419
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aj:Lgmc;

    invoke-virtual {v0}, Lgmc;->a()V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i()V

    return-void
.end method

.method private s()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, "safe"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->X:Z

    return v0
.end method

.method static synthetic t(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->n()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1587
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "statusDes"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1429
    .line 15600
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1429
    if-nez v1, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1438
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1439
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1440
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1493
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1494
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)V
    .locals 4
    .param p1, "dentryExtModel"    # Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 1499
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->al:J

    .line 1500
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->al:J

    const-wide/32 v2, 0xb20f01

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->am:Z

    .line 1501
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v0

    goto :goto_0

    .line 1500
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;)V
    .locals 11
    .param p1, "previewResultObject"    # Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v10, 0x65

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1445
    .line 16600
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 1445
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 1446
    :cond_0
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "1034"

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1024"

    invoke-virtual {v0, v1, v9}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :goto_0
    return-void

    .line 1451
    :cond_1
    if-nez p1, :cond_2

    .line 1452
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "1035"

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1025"

    invoke-virtual {v0, v1, v9}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1456
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "SpacePreviewActivity.showGetOnLinePreviewUrlResult"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "(previewResultObject is null)"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3, v4, v9, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_2
    iget v1, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->previewPlatformVersion:I

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->p:I

    .line 1463
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1464
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1465
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent_key_preview_result"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1467
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 1468
    .local v7, "msg":Landroid/os/Message;
    const/16 v0, 0x64

    iput v0, v7, Landroid/os/Message;->what:I

    .line 1469
    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1470
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1471
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "1036"

    invoke-interface {v1, v2, v3, v4, v9}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1026"

    invoke-virtual {v1, v2, v9}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "SpacePreviewActivity.showGetOnLinePreviewUrlResult"

    iget-object v4, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v3, v4, v5, v9, v8}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "previewUrl"

    iget-object v5, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    move v2, v0

    invoke-static/range {v0 .. v5}, Lgoq;->c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v0, "200001"

    iget-object v1, p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "readOnly"    # Z

    .prologue
    .line 1519
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1538
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1591
    .line 17600
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 1591
    if-nez v0, :cond_0

    .line 1596
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1582
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "waterMark"    # Z

    .prologue
    .line 1542
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1554
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "admin"    # Z

    .prologue
    .line 1558
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1577
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1600
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    invoke-virtual {v0}, Lgfu;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 524
    if-nez p1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    .line 529
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    invoke-virtual {v0, v1}, Lgfu;->a(I)Z

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 4816
    if-eqz p1, :cond_0

    .line 4819
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b:I

    .line 4820
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4821
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b:I

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    sget-object v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "cspace_chat_msg_preview_click"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 223
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    .line 224
    const-string/jumbo v2, "dentry_model"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 225
    const-string/jumbo v2, "preview_menu_mode"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e:I

    .line 226
    const-string/jumbo v2, "is_space_admin"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    .line 227
    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    .line 228
    const-string/jumbo v2, "message_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k:J

    .line 229
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgpt;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->N:J

    .line 234
    const-string/jumbo v2, "burnChat"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->O:Z

    .line 235
    const-string/jumbo v2, "intent_key_from_compse"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ac:Z

    .line 237
    const-string/jumbo v2, "space_type"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    const-string/jumbo v2, "space_type"

    const/4 v3, -0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    .line 247
    :cond_0
    :goto_0
    const-string/jumbo v2, "space_conversation_owner_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Y:J

    .line 248
    const-string/jumbo v2, "show_mail_menu"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->I:Z

    .line 249
    const-string/jumbo v2, "show_space_menu"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->J:Z

    .line 250
    const-string/jumbo v2, "is_auto_preview"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->K:Z

    .line 251
    const-string/jumbo v2, "space_transfer_src"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->M:Ljava/lang/String;

    .line 253
    const-string/jumbo v2, "doc_readonly"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, "readOnlyString":Ljava/lang/String;
    const-string/jumbo v2, "watermark"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, "waterMarkString":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    .line 257
    const-string/jumbo v2, "1"

    invoke-static {v15, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->X:Z

    .line 259
    const-string/jumbo v2, "key_need_dentry_info"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ae:Z

    .line 260
    const-string/jumbo v2, "key_dentry_comment_count"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->af:J

    .line 261
    const-string/jumbo v2, "key_dentry_last_comment_id"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ag:Ljava/lang/String;

    .line 263
    const-string/jumbo v2, "space_preview_type"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m:Ljava/lang/String;

    .line 264
    const-string/jumbo v2, "space_preview_version"

    const-wide/16 v4, 0x0

    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o:J

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const-string/jumbo v2, "space_preview_watermark"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->n:Z

    .line 269
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Z:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->aa:Z

    .line 276
    .end local v13    # "readOnlyString":Ljava/lang/String;
    .end local v15    # "waterMarkString":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 278
    .local v10, "flag":I
    if-nez v10, :cond_6

    .line 279
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v10    # "flag":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_7

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->finish()V

    .line 433
    :goto_3
    return-void

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_4

    .line 241
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->d(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    invoke-static {v2}, Lgpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    goto/16 :goto_0

    .line 269
    .restart local v13    # "readOnlyString":Ljava/lang/String;
    .restart local v15    # "waterMarkString":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 281
    .end local v13    # "readOnlyString":Ljava/lang/String;
    .end local v15    # "waterMarkString":Ljava/lang/String;
    .restart local v10    # "flag":I
    :cond_6
    const/4 v2, 0x4

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 283
    .end local v10    # "flag":I
    :catch_0
    move-exception v14

    .line 284
    .local v14, "t":Ljava/lang/Throwable;
    const-class v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 293
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_7
    new-instance v2, Lgft;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->n:Z

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lgft;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;JLjava/lang/String;ZLgfs$b;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ah:Z

    .line 298
    sget v2, Lfzs$g;->cspace_attachment_detail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->setContentView(I)V

    .line 2474
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->hideToolbar()V

    .line 2476
    sget v2, Lfzs$f;->rl_tool_bar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q:Landroid/view/View;

    .line 2477
    sget v2, Lfzs$f;->if_back:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r:Landroid/view/View;

    .line 2478
    sget v2, Lfzs$f;->tv_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->s:Landroid/widget/TextView;

    .line 2479
    sget v2, Lfzs$f;->tv_sub_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->t:Landroid/widget/TextView;

    .line 2480
    sget v2, Lfzs$f;->tv_edit:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->u:Landroid/view/View;

    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->r:Landroid/view/View;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$16;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    sget v2, Lfzs$f;->switch_to_menu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setOnMoreMenuClickListener(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-nez v2, :cond_8

    .line 314
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "msg_reaction_card"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ad:Z

    .line 317
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setMode(I)V

    .line 319
    sget v2, Lfzs$f;->content:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    .line 320
    sget v2, Lfzs$f;->compose_scrollview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->z:Landroid/widget/ScrollView;

    .line 321
    sget v2, Lfzs$f;->root_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ab:Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;

    .line 323
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    .line 325
    sget v2, Lfzs$f;->content_encrypt:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setActivity(Landroid/app/Activity;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->k:J

    .line 2690
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->n:Ljava/lang/String;

    .line 2691
    iput-wide v4, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->m:J

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->O:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setBurnChat(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setOrgId(J)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->W:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setReadOnly(Z)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setAdmin(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->V:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setSpaceType(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->al:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->am:Z

    .line 3151
    iput-wide v4, v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->s:J

    .line 3152
    const-wide/32 v6, 0xb20f01

    cmp-long v4, v4, v6

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->t:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->o:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setPreviewVersion(J)V

    .line 336
    if-eqz v12, :cond_9

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    const-string/jumbo v3, "intent_key_encrypt_file_force_send_read"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setIsForceSendReadForTargetFile(Z)V

    .line 341
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3439
    sget v2, Lfzs$f;->first_guide_ding_rl:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 3441
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$14;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    .line 3450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3458
    sget v2, Lfzs$f;->first_guide_print_support:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 3459
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->T:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->j()V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->F:Lgqm;

    if-nez v2, :cond_a

    .line 365
    new-instance v2, Lgqm;

    const/16 v3, 0x1e

    sget v4, Lfzs$h;->icon_otherapp:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v5}, Lgpr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lgqm;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->F:Lgqm;

    .line 368
    :cond_a
    const-string/jumbo v2, "space_preview_tip_pref_key"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->R:Z

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->L:Ljava/lang/String;

    .line 3605
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$17;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->P:Landroid/content/BroadcastReceiver;

    .line 3645
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3646
    const-string/jumbo v3, "com.alibaba.dingtalk.space.rename"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3647
    const-string/jumbo v3, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3648
    const-string/jumbo v3, "action_comment_count_change"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3649
    const-string/jumbo v3, "com.alibaba.dingtalk.cspace.online.edit.finish"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3650
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 375
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 376
    .local v16, "width":I
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 377
    .local v11, "height":I
    move/from16 v0, v16

    if-ge v11, v0, :cond_e

    .line 378
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    .line 383
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->z:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->f:Landroid/view/View;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->e()V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ae:Z

    if-nez v2, :cond_f

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->m()V

    goto/16 :goto_3

    .line 296
    .end local v11    # "height":I
    .end local v16    # "width":I
    .end local v17    # "wm":Landroid/view/WindowManager;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 3152
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 370
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 380
    .restart local v11    # "height":I
    .restart local v16    # "width":I
    .restart local v17    # "wm":Landroid/view/WindowManager;
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    goto :goto_7

    .line 392
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->q()V

    .line 410
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h()V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/4 v3, 0x5

    sget v4, Lfzs$h;->dt_mail_please_wait:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    .line 415
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_preview"

    const-string/jumbo v4, "1.2"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->b()V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    invoke-interface {v2}, Lgfs$a;->a()V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$13;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto/16 :goto_3

    .line 395
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->setVisibility(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->N:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setAudioDuration(J)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3888
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 3889
    iput-object v4, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3890
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    .line 3891
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3892
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 3893
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 3894
    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 403
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->B:Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setVisibility(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->setVisibility(I)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l()V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Z)V

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->i()V

    goto/16 :goto_8
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1639
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->Q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1640
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->setRequestedOrientation(I)V

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1644
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1649
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1651
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->C:Landroid/os/Handler;

    .line 1652
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->A:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    .line 1653
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->y:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 1655
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_2

    .line 1656
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    invoke-virtual {v0}, Lgfu;->f()V

    .line 1659
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->P:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1660
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1663
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1665
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onDestroy()V

    .line 1666
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1618
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onPause()V

    .line 1620
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    invoke-virtual {v0}, Lgfu;->d()V

    .line 1623
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1605
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onResume()V

    .line 1607
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->x:Lgfu;

    invoke-virtual {v0}, Lgfu;->c()V

    .line 1611
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->X:Z

    if-eqz v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->U:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 1614
    :cond_1
    return-void
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 118
    check-cast p1, Lgfs$a;

    .line 18424
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfs$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->ak:Lgfs$a;

    .line 118
    return-void
.end method
