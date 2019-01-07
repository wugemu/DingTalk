.class public Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Lfir;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:I

.field private D:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private E:Lcne;

.field private e:Lcjo$a;

.field private f:I

.field private g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private h:Lfjv;

.field private i:J

.field private j:J

.field private k:Lfjd;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/CheckBox;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lfje;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    .line 78
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    .line 79
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->j:J

    .line 92
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->r:Z

    .line 93
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->s:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->t:Z

    .line 420
    new-instance v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$6;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->E:Lcne;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method private a(I)V
    .locals 7
    .param p1, "diff"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 396
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v2, :cond_1

    .line 397
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->w:Z

    if-eqz v2, :cond_3

    .line 398
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 401
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 7230
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 402
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 8217
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 403
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->color_water_font_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 9142
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 407
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->color_water_font_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 411
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 412
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 415
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(ZZ)V

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
    .line 224
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->s:Z

    .line 225
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->r:Z

    .line 226
    if-eqz p1, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->x:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 2101
    new-instance v8, Lfje$1;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v8, v5, v0, v1}, Lfje$1;-><init>(Lfje;ZLfir;)V

    .line 2141
    if-eqz v2, :cond_0

    .line 2142
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v6, Lcma;

    invoke-interface {v4, v8, v6, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    move-object v8, v2

    .line 2145
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz p1, :cond_2

    iget v5, v5, Lfje;->a:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;->INIT_SHOW_SIZE:I

    add-int/lit8 v6, v6, 0x2

    .line 2146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2145
    invoke-interface/range {v2 .. v8}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 238
    :goto_2
    return-void

    .line 229
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g()V

    goto :goto_0

    .line 2145
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 233
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->j:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->C:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 3094
    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v8, p1

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lfje;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lfir;)V

    goto :goto_2

    .line 234
    :cond_4
    const/16 v9, 0x1e

    goto :goto_3

    .line 236
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->C:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 4075
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 4076
    invoke-static {v3}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 4078
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->j()Ljava/lang/Long;

    move-result-object v6

    .line 4079
    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_8

    .line 4080
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4087
    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move/from16 v8, p1

    move-object/from16 v11, p0

    invoke-virtual/range {v2 .. v11}, Lfje;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lfir;)V

    goto/16 :goto_2

    .line 236
    :cond_7
    const/16 v9, 0x1e

    goto :goto_4

    .line 4081
    :cond_8
    if-eqz v3, :cond_9

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v7, :cond_9

    .line 4082
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5

    .line 4083
    :cond_9
    if-eqz v3, :cond_6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v7, :cond_6

    .line 4084
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lcne;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->E:Lcne;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    const/4 v3, 0x1

    .line 62
    .line 9209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9210
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->t:Z

    if-eqz v0, :cond_0

    .line 9211
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g()V

    .line 9212
    invoke-direct {p0, v3, v3}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(ZZ)V

    .line 9215
    :goto_0
    return-void

    .line 9214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->h:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 10069
    iget-object v1, v1, Lfje;->c:Ljava/util/List;

    .line 9214
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    invoke-virtual {v0, v1, v3, v2}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 9215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    invoke-virtual {v0}, Lfjd;->notifyDataSetChanged()V

    goto :goto_0

    .line 9218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->h:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 11069
    iget-object v1, v1, Lfje;->c:Ljava/util/List;

    .line 9218
    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 9219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    invoke-virtual {v0}, Lfjd;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->q:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lfje;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Lfjd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    invoke-virtual {v0}, Lfjd;->notifyDataSetChanged()V

    .line 439
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->x:Ljava/lang/String;

    .line 204
    invoke-direct {p0, v1, v1}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(ZZ)V

    .line 206
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->b_(Z)V

    .line 252
    return-void
.end method

.method public final a(ZI)V
    .locals 6
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->t:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->b_(Z)V

    .line 293
    iput p2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->C:I

    .line 295
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->s:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->A:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 297
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->A:Z

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->s:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->z:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    if-ne v0, v1, :cond_6

    :cond_1
    if-lez p2, :cond_6

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 305
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->z:Z

    .line 312
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->A:Z

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeFooterView(Landroid/view/View;)Z

    .line 326
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->A:Z

    .line 329
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->r:Z

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->h:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 6069
    iget-object v1, v1, Lfje;->c:Ljava/util/List;

    .line 330
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    invoke-virtual {v0, v1, v4, v2}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 6286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 7069
    iget-object v1, v1, Lfje;->c:Ljava/util/List;

    .line 335
    invoke-virtual {v0, v1}, Lfjd;->a(Ljava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    invoke-virtual {v0}, Lfjd;->notifyDataSetChanged()V

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->c()V

    .line 338
    return-void

    .line 306
    :cond_6
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->y:Z

    if-nez v0, :cond_2

    .line 307
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->B:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 310
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->y:Z

    goto :goto_0

    .line 313
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->z:Z

    if-eqz v0, :cond_8

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeHeaderView(Landroid/view/View;)Z

    .line 316
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->z:Z

    .line 318
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->y:Z

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeHeaderView(Landroid/view/View;)Z

    .line 320
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->y:Z

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 5069
    iget-object v0, v1, Lfje;->c:Ljava/util/List;

    .line 258
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 267
    .end local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$g;->icon_empty_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 264
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->empty_no_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    new-instance v1, Lfjd;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    invoke-direct {v1, v2, v3}, Lfjd;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 1069
    iget-object v2, v2, Lfje;->c:Ljava/util/List;

    .line 171
    invoke-virtual {v1, v2}, Lfjd;->a(Ljava/util/List;)V

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->k:Lfjd;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1080
    iput-object v2, v1, Lfjd;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->header_org_all_check:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->p:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->p:Landroid/view/View;

    sget v2, Lezg$h;->checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->q:Landroid/widget/CheckBox;

    .line 175
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->q:Landroid/widget/CheckBox;

    new-instance v2, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->p:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->r:Z

    invoke-direct {p0, v4, v1}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(ZZ)V

    .line 191
    new-instance v1, Lfjv;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lfjv;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->h:Lfjv;

    .line 192
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    invoke-virtual {v1, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 193
    .local v0, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    .line 194
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->w:Z

    .line 195
    const-string/jumbo v1, "water"

    const-string/jumbo v2, "setting:%s, bool: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->w:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    :cond_0
    new-instance v1, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$5;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e:Lcjo$a;

    .line 1372
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->a(Lcjo$a;)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->f:I

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    .line 123
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_enterprise_oid"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->i:J

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "node"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_department_oid"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->j:J

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_filter_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->D:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 130
    new-instance v0, Lfje;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfje;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->u:Lfje;

    .line 131
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

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 153
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->a(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->m:Landroid/view/View;

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->I:Landroid/view/View;

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
    .line 342
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e:Lcjo$a;

    .line 344
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroy()V

    .line 345
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lezg$j;->fragment_enterprise_contact:I

    return v0
.end method
