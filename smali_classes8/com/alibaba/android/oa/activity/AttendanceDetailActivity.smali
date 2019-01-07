.class public Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AttendanceDetailActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Lefy;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->showLoadingDialog()V

    .line 139
    invoke-static {}, Legd;->a()Legb;

    move-result-object v0

    iget-wide v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->j:J

    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->m:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->n:J

    const-string/jumbo v8, "EVENTBUTLER"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v9, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;-><init>(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V

    const-class v10, Lcma;

    invoke-interface {v8, v9, v10, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    invoke-interface/range {v0 .. v8}, Legb;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;Lefy;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;
    .param p1, "x1"    # Lefy;

    .prologue
    .line 55
    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    if-nez v0, :cond_1

    .line 1167
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b()V

    :cond_0
    return-void

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v1, v1, Lefy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_3

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v1, v1, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v1, v1, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v2, v2, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$2;-><init>(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v1, v1, Lefy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1202
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1203
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefw;

    .line 1240
    if-eqz v0, :cond_17

    .line 1241
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ledz$g;->item_attendance_detail_block:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1242
    sget v1, Ledz$f;->attendance_block_title_tv:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1243
    iget-object v2, v0, Lefw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    sget v1, Ledz$f;->attendance_block_content_layout:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1245
    iget-object v2, v0, Lefw;->b:Ljava/util/List;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lefw;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 1246
    iget-object v2, v0, Lefw;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 1247
    const/4 v2, 0x0

    move v7, v2

    :goto_2
    if-ge v7, v9, :cond_16

    .line 1248
    iget-object v2, v0, Lefw;->b:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefx;

    .line 1250
    const/4 v3, 0x1

    if-ne v9, v3, :cond_9

    .line 1251
    const/4 v3, 0x4

    move v6, v3

    .line 1273
    :goto_3
    if-eqz v2, :cond_15

    .line 1274
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Ledz$g;->item_attendance_detail_item:I

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1275
    sget v3, Ledz$f;->attendance_item_time_tv:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1276
    iget-object v10, v2, Lefx;->c:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    sget v3, Ledz$f;->attendance_item_timeline_view:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1278
    sget v3, Ledz$f;->attendance_item_title_tv:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1279
    iget-object v11, v2, Lefx;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    sget v3, Ledz$f;->attendance_item_content_tv:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1281
    iget-object v11, v2, Lefx;->d:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    sget v3, Ledz$f;->attendance_item_label_tv:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1283
    iget-object v11, v2, Lefx;->b:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1284
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1288
    :goto_4
    iget-object v11, v2, Lefx;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    iget v2, v2, Lefx;->f:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_10

    .line 1291
    const/4 v2, 0x1

    if-ne v6, v2, :cond_d

    .line 1292
    sget v2, Ledz$e;->orange_dot_bottom:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1300
    :cond_6
    :goto_5
    sget v2, Ledz$e;->attendance_detail_status_exception:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_6
    move-object v2, v5

    .line 1262
    :goto_7
    if-eqz v2, :cond_7

    .line 1263
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1247
    :cond_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_2

    .line 1205
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1207
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x427c0000    # 63.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1208
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v1, v1, Lefy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    iget-object v0, v0, Lefy;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$3;-><init>(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1253
    :cond_9
    if-nez v7, :cond_a

    .line 1254
    const/4 v3, 0x1

    move v6, v3

    goto/16 :goto_3

    .line 1255
    :cond_a
    add-int/lit8 v3, v9, -0x1

    if-ne v7, v3, :cond_b

    .line 1256
    const/4 v3, 0x2

    move v6, v3

    goto/16 :goto_3

    .line 1258
    :cond_b
    const/4 v3, 0x3

    move v6, v3

    goto/16 :goto_3

    .line 1286
    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1293
    :cond_d
    const/4 v2, 0x3

    if-ne v6, v2, :cond_e

    .line 1294
    sget v2, Ledz$e;->orange_dot_both:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 1295
    :cond_e
    const/4 v2, 0x2

    if-ne v6, v2, :cond_f

    .line 1296
    sget v2, Ledz$e;->orange_dot_top:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1297
    :cond_f
    const/4 v2, 0x4

    if-ne v6, v2, :cond_6

    .line 1298
    sget v2, Ledz$e;->orange_dot_none:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1302
    :cond_10
    const/4 v2, 0x1

    if-ne v6, v2, :cond_12

    .line 1303
    sget v2, Ledz$e;->green_dot_bottom:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1311
    :cond_11
    :goto_8
    sget v2, Ledz$e;->attendance_detail_status_normal:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1304
    :cond_12
    const/4 v2, 0x3

    if-ne v6, v2, :cond_13

    .line 1305
    sget v2, Ledz$e;->green_dot_both:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 1306
    :cond_13
    const/4 v2, 0x2

    if-ne v6, v2, :cond_14

    .line 1307
    sget v2, Ledz$e;->green_dot_top:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 1308
    :cond_14
    const/4 v2, 0x4

    if-ne v6, v2, :cond_11

    .line 1309
    sget v2, Ledz$e;->green_dot_none:I

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 1315
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_16
    move-object v0, v4

    .line 1232
    :goto_9
    if-eqz v0, :cond_5

    .line 1233
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1269
    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)Lefy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->o:Lefy;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Ledz$g;->activity_attendance_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->setContentView(I)V

    .line 1108
    sget v0, Ledz$f;->attendance_detail_avatar_iv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1109
    sget v0, Ledz$f;->attendance_detail_name_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->c:Landroid/widget/TextView;

    .line 1110
    sget v0, Ledz$f;->attendance_detail_date_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->d:Landroid/widget/TextView;

    .line 1111
    sget v0, Ledz$f;->attendance_detail_content_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->e:Landroid/widget/LinearLayout;

    .line 1112
    sget v0, Ledz$f;->attendance_detail_action_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->f:Landroid/widget/Button;

    .line 1113
    sget v0, Ledz$f;->attendance_detail_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->g:Landroid/view/View;

    .line 1114
    sget v0, Ledz$f;->attendance_detail_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->h:Landroid/view/View;

    .line 1115
    sget v0, Ledz$f;->attendance_detail_empty_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->i:Landroid/view/View;

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1120
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1123
    const-string/jumbo v1, "orgId"

    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->j:J

    .line 1124
    const-string/jumbo v1, "staffId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->k:Ljava/lang/String;

    .line 1125
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->l:Ljava/lang/String;

    .line 1126
    const-string/jumbo v1, "subAppId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->m:Ljava/lang/String;

    .line 1127
    const-string/jumbo v1, "date"

    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->n:J

    .line 1128
    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->p:Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 337
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 327
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 332
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->q:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->q:Z

    .line 105
    :cond_0
    return-void
.end method
