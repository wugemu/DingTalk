.class public final Letf;
.super Lete;
.source "ContactSearchViewHolder.java"


# instance fields
.field public e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/CheckBox;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field r:Z

.field private s:Landroid/widget/TextView;

.field private t:Lcom/alibaba/doraemon/image/ImageMagician;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 102
    invoke-static {}, Lcms;->c()Z

    move-result v0

    iput-boolean v0, p0, Letf;->u:Z

    .line 103
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Letf;->t:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 104
    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 456
    iget-object v0, p0, Letf;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Letf;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 113
    :cond_0
    sget v0, Lemt$e;->tv_friend_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letf;->f:Landroid/widget/TextView;

    .line 114
    sget v0, Lemt$e;->iv_group_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Letf;->g:Landroid/widget/ImageView;

    .line 115
    sget v0, Lemt$e;->user_person_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Letf;->h:Landroid/widget/ImageView;

    .line 116
    sget v0, Lemt$e;->user_person_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letf;->i:Landroid/widget/TextView;

    .line 117
    sget v0, Lemt$e;->layout_friend_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    iput-object v0, p0, Letf;->j:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 118
    sget v0, Lemt$e;->iv_expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->p:Landroid/view/View;

    .line 119
    iget-object v0, p0, Letf;->p:Landroid/view/View;

    iget-object v1, p0, Letf;->j:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lemt$e;->tv_friend_explain:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letf;->s:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Letf;->j:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    new-instance v1, Letf$1;

    invoke-direct {v1, p0}, Letf$1;-><init>(Letf;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V

    .line 155
    sget v0, Lemt$e;->tv_friend_desc2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letf;->k:Landroid/widget/TextView;

    .line 156
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->b:Landroid/view/View;

    .line 157
    sget v0, Lemt$e;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Letf;->l:Landroid/widget/CheckBox;

    .line 158
    sget v0, Lemt$e;->iv_profile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->m:Landroid/view/View;

    .line 159
    sget v0, Lemt$e;->iv_call:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->n:Landroid/view/View;

    .line 160
    sget v0, Lemt$e;->fl_user_tag_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->o:Landroid/view/View;

    .line 162
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Letf;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 163
    sget v0, Lemt$e;->ll_text_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letf;->q:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->isDemissionColleague()Z

    move-result v0

    iput-boolean v0, p0, Letf;->r:Z

    .line 1212
    if-nez p1, :cond_7

    const/4 v0, 0x0

    .line 1213
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_8

    .line 1214
    :cond_0
    iget-object v0, p0, Letf;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1224
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1227
    iget-object v0, p0, Letf;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Letf;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->isGroupTagConfigured()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1230
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getGroupTagIconUrl()Ljava/lang/String;

    move-result-object v5

    .line 1231
    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1233
    iget-object v0, p0, Letf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1234
    iget-object v6, p0, Letf;->a:Landroid/app/Activity;

    iget-boolean v1, p0, Letf;->u:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x41c00000    # 24.0f

    :goto_2
    invoke-static {v6, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1235
    iget-object v1, p0, Letf;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1236
    iget-object v1, p0, Letf;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iget-object v0, p0, Letf;->t:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Letf;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v5, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1238
    iget-object v0, p0, Letf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Letf;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move v0, v3

    .line 1242
    :goto_3
    if-nez v0, :cond_2

    .line 1243
    iget-object v0, p0, Letf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1244
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getNameIconRes()I

    move-result v0

    if-eqz v0, :cond_a

    .line 1245
    iget-object v0, p0, Letf;->f:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1246
    iget-object v0, p0, Letf;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getNameIconRes()I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1254
    :cond_2
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getPersonStatus()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1256
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcsy;->a(Ljava/lang/String;)I

    move-result v1

    .line 1257
    if-lez v1, :cond_b

    .line 1258
    iget-object v2, p0, Letf;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    iget-object v2, p0, Letf;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1263
    :goto_5
    iget-object v1, p0, Letf;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1264
    iget-object v1, p0, Letf;->i:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :goto_6
    iget-object v0, p0, Letf;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    iget-object v0, p0, Letf;->j:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Letf;->a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Letf;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1278
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1279
    iget-object v0, p0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    :cond_3
    :goto_7
    iget-object v0, p0, Letf;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Letf;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Letf;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 1295
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    instance-of v0, p1, Lcom/alibaba/android/search/model/FriendModel;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/alibaba/android/search/model/LocalContactModel;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/alibaba/android/search/model/OrgContactModel;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/alibaba/android/search/model/RecommendContactModel;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/alibaba/android/search/model/LocalEmployeeModel;

    if-eqz v0, :cond_11

    :cond_4
    if-eqz v1, :cond_11

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1299
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_11

    .line 1302
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1303
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    invoke-direct {p0, v4}, Letf;->c(I)V

    .line 1312
    :goto_8
    iget-boolean v0, p0, Letf;->r:Z

    if-eqz v0, :cond_10

    .line 1313
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_level4_base_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1318
    :goto_9
    iget-object v0, p0, Letf;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Letf;->m:Landroid/view/View;

    new-instance v2, Letf$2;

    invoke-direct {v2, p0, p1}, Letf$2;-><init>(Letf;Lcom/alibaba/android/search/model/BaseModel;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1355
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    new-instance v2, Letf$3;

    invoke-direct {v2, p0, p1, v1}, Letf$3;-><init>(Letf;Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    :goto_a
    iget-object v0, p0, Letf;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1448
    instance-of v1, p1, Lcom/alibaba/android/search/model/FriendModel;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/alibaba/android/search/model/LocalContactModel;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/alibaba/android/search/model/OrgContactModel;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/alibaba/android/search/model/RecommendContactModel;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/alibaba/android/search/model/LocalEmployeeModel;

    if-eqz v1, :cond_6

    .line 1450
    :cond_5
    iget-object v1, p0, Letf;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Letf;->a:Landroid/app/Activity;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Letf;->a:Landroid/app/Activity;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1452
    :cond_6
    iget-object v1, p0, Letf;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2191
    if-eqz p1, :cond_14

    .line 2192
    iget-object v0, p0, Letf;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->getExplain(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    move-result-object v0

    .line 2193
    if-eqz v0, :cond_13

    .line 2194
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;->a:Ljava/lang/CharSequence;

    .line 2195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2196
    iget-object v1, p0, Letf;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2197
    iget-object v0, p0, Letf;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Letf;->s:Landroid/widget/TextView;

    sget v1, Lemt$d;->bg_corner_3_stroke_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2205
    :goto_b
    return-void

    .line 1212
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getAvatar()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 1215
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1216
    iget-object v1, p0, Letf;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1217
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 1218
    iget-object v1, p0, Letf;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v1, v0, p2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 1219
    iget-object v0, p0, Letf;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/BaseModel;->fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 1234
    goto/16 :goto_2

    .line 1248
    :cond_a
    iget-object v0, p0, Letf;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 1261
    :cond_b
    iget-object v1, p0, Letf;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1266
    :cond_c
    iget-object v0, p0, Letf;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Letf;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1282
    :cond_d
    iget-object v0, p0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 1305
    :cond_e
    instance-of v0, p1, Lcom/alibaba/android/search/model/NewRetailMemberModel;

    if-eqz v0, :cond_f

    .line 1306
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    invoke-direct {p0, v8}, Letf;->c(I)V

    goto/16 :goto_8

    .line 1309
    :cond_f
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    invoke-direct {p0, v8}, Letf;->c(I)V

    goto/16 :goto_8

    .line 1315
    :cond_10
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lemt$b;->ui_common_green_icon_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 1441
    :cond_11
    iget-object v0, p0, Letf;->m:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Letf;->n:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Letf;->p:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    invoke-direct {p0, v8}, Letf;->c(I)V

    goto/16 :goto_a

    .line 2200
    :cond_12
    iget-object v0, p0, Letf;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 2203
    :cond_13
    iget-object v0, p0, Letf;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 2206
    :cond_14
    iget-object v0, p0, Letf;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_15
    move v0, v4

    goto/16 :goto_3
.end method
