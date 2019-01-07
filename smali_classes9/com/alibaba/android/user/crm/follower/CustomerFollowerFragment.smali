.class public Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfia;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/view/View;

.field private M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private N:Landroid/content/BroadcastReceiver;

.field private O:Lcne;

.field public a:Lfhx;

.field public b:Lfhx;

.field public c:Lfmd;

.field private d:Lcjo$a;

.field private e:I

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private g:J

.field private h:J

.field private i:Lfhz;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/CheckBox;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lfme;

.field private z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    .line 87
    iput-wide v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    .line 88
    iput-wide v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->h:J

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    .line 105
    iput-boolean v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->r:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->s:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->x:I

    .line 410
    new-instance v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$6;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->N:Landroid/content/BroadcastReceiver;

    .line 528
    new-instance v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$8;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->O:Lcne;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->x:I

    return p1
.end method

.method private a(I)V
    .locals 10
    .param p1, "diff"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 501
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v5, :cond_1

    .line 502
    iget-boolean v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->A:Z

    if-eqz v5, :cond_3

    .line 503
    const/16 v5, 0x10

    invoke-static {v5}, Lcms;->b(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 504
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v5, :cond_0

    .line 505
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 506
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 6230
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 507
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->f()Ljava/lang/String;

    move-result-object v6

    .line 7217
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 508
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    iget-wide v8, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    invoke-virtual {v6, v8, v9}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 509
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->color_water_font_white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 8142
    iput v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 511
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v5, p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 512
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->z:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    invoke-virtual {v5, v6, v7}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "orgName":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "mobile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->color_water_font_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 517
    .local v1, "color":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4, v3, v1}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 519
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 520
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 523
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "mobile":Ljava/lang/String;
    .end local v4    # "orgName":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 16
    .param p1, "getMore"    # Z
    .param p2, "checkAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->r:Z

    .line 294
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->B:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 3100
    new-instance v8, Lfme$1;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v8, v5, v0, v1}, Lfme$1;-><init>(Lfme;ZLfia;)V

    .line 3141
    if-eqz v2, :cond_0

    .line 3142
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v6, Lcma;

    invoke-interface {v4, v8, v6, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    move-object v8, v2

    .line 3145
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz p1, :cond_1

    iget v5, v5, Lfme;->a:I

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;->INIT_SHOW_SIZE:I

    add-int/lit8 v6, v6, 0x2

    .line 3146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3145
    invoke-interface/range {v2 .. v8}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 302
    :goto_1
    return-void

    .line 3145
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 297
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->h:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->v:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 4093
    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v8, p1

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lfme;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lfia;)V

    goto :goto_1

    .line 298
    :cond_3
    const/16 v9, 0x1e

    goto :goto_2

    .line 300
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->v:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 5074
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 5075
    invoke-static {v3}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 5077
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->j()Ljava/lang/Long;

    move-result-object v6

    .line 5078
    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_7

    .line 5079
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 5086
    :cond_5
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move/from16 v8, p1

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lfme;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lfia;)V

    goto :goto_1

    .line 300
    :cond_6
    const/16 v9, 0x1e

    goto :goto_3

    .line 5080
    :cond_7
    if-eqz v3, :cond_8

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v7, :cond_8

    .line 5081
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_4

    .line 5082
    :cond_8
    if-eqz v3, :cond_5

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v7, :cond_5

    .line 5083
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->t:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->u:I

    return p1
.end method

.method private b(Z)V
    .locals 10
    .param p1, "isCheckAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b:Lfhx;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a:Lfhx;

    if-eqz v6, :cond_1

    .line 253
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    .line 3068
    iget-object v3, v6, Lfme;->c:Ljava/util/List;

    .line 254
    .local v3, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 255
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 256
    .local v4, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v4, :cond_3

    .line 260
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    :cond_0
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    if-nez v6, :cond_4

    .line 264
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 265
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz p1, :cond_2

    .line 266
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b:Lfhx;

    invoke-interface {v6, v0}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v2

    .line 267
    .local v2, "isAdded":Z
    if-nez v2, :cond_3

    .line 268
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v1    # "i":I
    .end local v2    # "isAdded":Z
    .end local v3    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .end local v4    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v6}, Lfmd;->notifyDataSetChanged()V

    .line 290
    return-void

    .line 272
    .restart local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .restart local v1    # "i":I
    .restart local v3    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .restart local v4    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b:Lfhx;

    invoke-interface {v6, v0, v9}, Lfhx;->a(Ljava/lang/Object;Z)Z

    .line 254
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_4
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v6, v7, :cond_3

    .line 275
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 276
    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    .line 277
    .local v5, "nodeIdentity":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p1, :cond_5

    .line 278
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a:Lfhx;

    invoke-interface {v6, v5}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v2

    .line 279
    .restart local v2    # "isAdded":Z
    if-nez v2, :cond_3

    .line 280
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 284
    .end local v2    # "isAdded":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a:Lfhx;

    invoke-interface {v6, v5, v9}, Lfhx;->a(Ljava/lang/Object;Z)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->u:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->t:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->w:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->w:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->x:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lcne;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->O:Lcne;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    .line 8239
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8240
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->s:Z

    if-eqz v0, :cond_0

    .line 8307
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8308
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$4;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8314
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 8315
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8316
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8242
    invoke-direct {p0, v3, v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(ZZ)V

    .line 8244
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Z)V

    goto :goto_0

    .line 8247
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Z)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lfme;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)Lfmd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "mKeyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->B:Ljava/lang/String;

    .line 477
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(ZZ)V

    .line 478
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isRemove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 485
    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    if-ne v0, v1, :cond_1

    .line 487
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v1}, Lfmd;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v1}, Lfmd;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 6
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->s:Z

    .line 349
    iput p2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->v:I

    .line 351
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->r:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->D:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    if-ne v0, v1, :cond_6

    :cond_0
    if-lez p2, :cond_6

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 357
    iput-boolean v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->D:Z

    .line 364
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->E:Z

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 366
    iput-boolean v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->E:Z

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    if-eqz v0, :cond_4

    .line 387
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b(Z)V

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5342
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5343
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    invoke-virtual {v0}, Lfmd;->notifyDataSetChanged()V

    .line 5397
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_5

    .line 5398
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    .line 6068
    iget-object v0, v0, Lfme;->c:Ljava/util/List;

    .line 5399
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 5400
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    .line 358
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->C:Z

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->F:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->F:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 362
    iput-boolean v5, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->C:Z

    goto :goto_0

    .line 371
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->E:Z

    if-eqz v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeFooterView(Landroid/view/View;)Z

    .line 374
    iput-boolean v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->E:Z

    .line 376
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->D:Z

    if-eqz v0, :cond_9

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeHeaderView(Landroid/view/View;)Z

    .line 378
    iput-boolean v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->D:Z

    .line 380
    :cond_9
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->C:Z

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeHeaderView(Landroid/view/View;)Z

    .line 382
    iput-boolean v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->C:Z

    goto/16 :goto_1

    .line 5402
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5403
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 5404
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_empty_people:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 5405
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->empty_no_people:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_2
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$5;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 207
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    new-instance v1, Lfmd;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    .line 2068
    iget-object v3, v3, Lfme;->c:Ljava/util/List;

    .line 210
    iget v4, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    new-array v5, v9, [Lfhx;

    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a:Lfhx;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b:Lfhx;

    aput-object v6, v5, v8

    invoke-direct {v1, v2, v3, v4, v5}, Lfmd;-><init>(Landroid/app/Activity;Ljava/util/List;I[Lfhx;)V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2168
    iput-object v2, v1, Lfmd;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->c:Lfmd;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 2172
    iput-object v2, v1, Lfmd;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->header_org_all_check:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->o:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->o:Landroid/view/View;

    sget v2, Lezg$h;->checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->p:Landroid/widget/CheckBox;

    new-instance v2, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$2;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->o:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$3;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-boolean v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->q:Z

    invoke-direct {p0, v7, v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(ZZ)V

    .line 231
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    invoke-virtual {v1, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 232
    .local v0, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    .line 233
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->A:Z

    .line 234
    const-string/jumbo v1, "water"

    const-string/jumbo v2, "setting:%s, bool: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v7

    iget-boolean v4, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->A:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_add_employee:I

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->i:Lfhz;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    invoke-interface {v0, v1, v2, v4, v5}, Lfhz;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_add_dept:I

    if-ne v0, v1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->i:Lfhz;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    invoke-interface {v0, v1, v2, v4, v5}, Lfhz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->ll_edit_dept:I

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->i:Lfhz;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-interface {v0, v1, v2}, Lfhz;->c(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->e:I

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->g:J

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_department_oid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->h:J

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_filter_model"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->M:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_showSubEmp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 146
    :cond_0
    new-instance v1, Lfid;

    invoke-direct {v1}, Lfid;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->i:Lfhz;

    .line 147
    new-instance v1, Lfme;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lfme;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->y:Lfme;

    .line 1432
    new-instance v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$7;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d:Lcjo$a;

    .line 1453
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->a(Lcjo$a;)V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 153
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment$1;-><init>(Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(I)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->k:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->l:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_dept_control_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->m:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_employee:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->d:Lcjo$a;

    .line 424
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 425
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 426
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lezg$j;->fragment_enterprise_contact:I

    return v0
.end method
