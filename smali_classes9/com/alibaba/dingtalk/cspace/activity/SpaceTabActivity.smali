.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceTabActivity.java"

# interfaces
.implements Lgdh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;,
        Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;
    }
.end annotation


# static fields
.field public static final N:Ljava/lang/String;

.field private static final Z:[I


# instance fields
.field private O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

.field private P:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

.field private Q:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

.field private R:Landroid/support/v4/view/ViewPager;

.field private S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private T:I

.field private U:I

.field private V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

.field private W:Ljava/lang/String;

.field private X:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Z

.field private aa:Landroid/util/SparseIntArray;

.field private ab:[I

.field private ac:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->N:Ljava/lang/String;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lfzs$h;->org_personal:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lfzs$h;->dt_cspace_org_file:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lfzs$h;->dt_space_share_file:I

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Z:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->X:Ljava/util/HashMap;

    .line 69
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Y:Z

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    .line 434
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Q:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->P:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->P:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Y:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    return-object v0
.end method

.method private b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lfzv;->a(Ljava/lang/String;J)V

    .line 302
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    .line 303
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    .line 302
    invoke-static/range {v5 .. v21}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 306
    return-void
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Z:[I

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Q:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    return-object v0
.end method

.method private e(I)I
    .locals 2
    .param p1, "tabPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 350
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    if-eqz v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 351
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ac:Z

    if-nez v1, :cond_0

    .line 352
    const/4 v0, 0x2

    .line 359
    .local v0, "index":I
    :goto_0
    return v0

    .line 354
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    aget v0, v1, p1

    .restart local v0    # "index":I
    goto :goto_0

    .line 357
    .end local v0    # "index":I
    :cond_1
    move v0, p1

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ac:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Y:Z

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->W:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->supportInvalidateOptionsMenu()V

    .line 235
    :cond_0
    return-void
.end method

.method public final a(JLgit;I)V
    .locals 21
    .param p1, "orgId"    # J
    .param p3, "dpCoFolderModel"    # Lgit;
    .param p4, "mode"    # I

    .prologue
    .line 499
    if-nez p3, :cond_0

    .line 536
    :goto_0
    return-void

    .line 503
    :cond_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "spaceId":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v11, v0, Lgit;->c:Ljava/lang/String;

    .line 505
    .local v11, "folderName":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v3, v0, Lgit;->k:Ljava/lang/Integer;

    .line 4033
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v20

    .line 507
    .local v20, "role":I
    const-wide/16 v4, 0x0

    .line 509
    .local v4, "cooperationOrgId":J
    move-object/from16 v0, p3

    iget-object v3, v0, Lgit;->j:Lgjb;

    if-eqz v3, :cond_1

    .line 510
    move-object/from16 v0, p3

    iget-object v3, v0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v8, 0x0

    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 513
    :cond_1
    const/4 v3, 0x5

    move/from16 v0, p4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x67

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 515
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 4230
    .local v2, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 517
    sget v3, Lfzs$h;->dt_space_cooperate_auth_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5218
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 518
    sget v3, Lfzs$h;->dt_space_cooperate_auth_tip:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5239
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 519
    sget v3, Lfzs$h;->mail_guide_text_i_know_that:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5259
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 520
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 5271
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 526
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 527
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0

    .line 531
    .end local v2    # "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->p:Z

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->n:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v6, p4

    invoke-static/range {v3 .. v19}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public final a(JLjava/lang/String;Lcem;I)V
    .locals 15
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgConversationModel"    # Lcem;
    .param p5, "mode"    # I

    .prologue
    .line 310
    const/4 v2, 0x3

    move/from16 v0, p5

    if-ne v0, v2, :cond_0

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_group_folder_readonly_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lfzv;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    sget v2, Lfzs$h;->dt_space_send_error_ro:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcma;

    .line 337
    .local v10, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcem;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->w:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iget-object v13, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->s:Ljava/util/ArrayList;

    move-object v2, p0

    move-object/from16 v3, p4

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v13}, Lfzu;->a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 257
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3265
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;JLjava/lang/String;Ljava/lang/String;)V

    .line 3296
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3297
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->u()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, p3, v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 206
    .local v1, "adapterFragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 207
    move-object v0, v1

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-object v3, v0

    .line 2837
    .local v3, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "adapterFragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final d(I)V
    .locals 2
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v0, :cond_0

    .line 218
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    .line 219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(I)V

    .line 222
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->yun_space:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->supportInvalidateOptionsMenu()V

    .line 226
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Ljava/util/List;)V

    .line 346
    return-void
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->n()V

    .line 141
    invoke-static {}, Lgpr;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->W:Ljava/lang/String;

    .line 142
    return-void
.end method

.method protected final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 248
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v0, "600001"

    sget v1, Lfzs$h;->dt_cspace_error_msg_request_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lglc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Ljava/util/ArrayList;)V

    .line 252
    :cond_1
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onBackPressed()V

    .line 253
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lfzw;->a()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "spaceCommonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 97
    :cond_0
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    .line 98
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    aput v5, v2, v5

    .line 99
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    aput v4, v2, v4

    .line 100
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    aput v6, v2, v6

    .line 101
    iput v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    .line 102
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    invoke-static {}, Lfzu;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ac:Z

    .line 108
    sget v2, Lfzs$g;->activity_space_tab:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->setContentView(I)V

    .line 110
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v2

    invoke-virtual {v2}, Lgld;->d()V

    .line 111
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getMax()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    invoke-static {}, Lgld;->a()Lgld;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getMax()I

    move-result v3

    .line 2050
    iput v3, v2, Lgld;->b:I

    .line 2145
    :cond_1
    sget v2, Lfzs$f;->view_pager:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    .line 2146
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 2147
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$e;->default_divider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2149
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    if-nez v2, :cond_2

    .line 2150
    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcn;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    .line 2153
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 2155
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2157
    sget v2, Lfzs$f;->indicator:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 2158
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v3, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 2159
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v3, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 2160
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2161
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 2163
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    if-eq v2, v8, :cond_3

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 2164
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 2173
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2174
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b:Z

    .line 2175
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "action_space_create_conversation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    if-eq v2, v8, :cond_5

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 122
    :cond_5
    invoke-static {}, Lglc;->a()V

    .line 124
    :cond_6
    return-void

    .line 2165
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_7
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    if-ne v2, v7, :cond_4

    .line 2166
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->c:Z

    if-nez v2, :cond_4

    .line 2167
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->U:I

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->T:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 185
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    invoke-static {}, Lglc;->a()V

    .line 188
    :cond_1
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 189
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->P:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .line 190
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->Q:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .line 191
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->R:Landroid/support/v4/view/ViewPager;

    .line 192
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 193
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->aa:Landroid/util/SparseIntArray;

    .line 194
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->ab:[I

    .line 195
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->X:Ljava/util/HashMap;

    .line 196
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->V:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;

    .line 198
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v0}, Lgqd;->b()V

    .line 199
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 240
    :cond_0
    const-string/jumbo v0, "600001"

    sget v1, Lfzs$h;->dt_cspace_error_msg_request_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lglc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Ljava/util/ArrayList;)V

    .line 243
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
