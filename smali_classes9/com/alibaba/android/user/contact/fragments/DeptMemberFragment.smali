.class public Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "DeptMemberFragment.java"


# instance fields
.field public b:I

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lfgq;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field private final s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private w:Z

.field private x:Lcjo$a;

.field private y:Lcne;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->g:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->h:Ljava/util/List;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->m:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->n:I

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->q:I

    .line 82
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->s:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->t:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->u:Ljava/util/List;

    .line 343
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$6;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->y:Lcne;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->t:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 7
    .param p1, "diff"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 319
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v2, :cond_1

    .line 320
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->w:Z

    if-eqz v2, :cond_3

    .line 321
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v2, :cond_0

    .line 323
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 324
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 4230
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 325
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 5217
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->color_water_font_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 6142
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->v:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->color_water_font_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 338
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 9
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 243
    if-eqz p1, :cond_2

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 3255
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->i:I

    :cond_0
    const/16 v7, 0x1e

    new-instance v8, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$5;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)V

    invoke-interface/range {v1 .. v8}, Lezt;->b(JJIILcma;)V

    .line 251
    :cond_1
    return-void

    .line 3207
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$3;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 3215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lfgq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->j:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->j:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->k:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->i:I

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->l:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->n:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcne;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->y:Lcne;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    const/16 v2, 0x8

    .line 49
    .line 8232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8233
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 8234
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->no_dept_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    .line 8238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 8239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    const/16 v2, 0x8

    .line 49
    .line 9220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 9222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$4;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->K:Lcif;

    return-object v0
.end method


# virtual methods
.method public final a(Lcif;)V
    .locals 1
    .param p1, "chooseListener"    # Lcif;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->a(Lcif;)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    .line 7096
    iput-object p1, v0, Lfgq;->c:Lcif;

    .line 363
    :cond_0
    return-void
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$7;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    new-instance v0, Lfgq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->g:Ljava/util/List;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->q:I

    iget v5, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->o:I

    iget v6, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->p:I

    invoke-direct/range {v0 .. v6}, Lfgq;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;III)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->K:Lcif;

    .line 2096
    iput-object v1, v0, Lfgq;->c:Lcif;

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->t:Ljava/util/List;

    .line 3077
    iput-object v1, v0, Lfgq;->a:Ljava/util/List;

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->u:Ljava/util/List;

    .line 3084
    iput-object v1, v0, Lfgq;->b:Ljava/util/List;

    .line 193
    invoke-direct {p0, v8}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Z)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v7

    .line 197
    .local v7, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v7, :cond_0

    .line 198
    iget-boolean v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->w:Z

    .line 199
    const-string/jumbo v0, "water"

    const-string/jumbo v1, "setting:%s, bool: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v8

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->w:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .end local v7    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_0
    invoke-direct {p0, v8}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(I)V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->q:I

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->o:I

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->p:I

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "dept_object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->r:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1103
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->x:Lcjo$a;

    .line 1123
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->x:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment$2;-><init>(Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->d:Landroid/view/View;

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseFragment;->onDestroy()V

    .line 144
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->x:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->x:Lcjo$a;

    .line 146
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->f:Lfgq;

    .line 8096
    iput-object v1, v0, Lfgq;->c:Lcif;

    .line 369
    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->K:Lcif;

    .line 372
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseFragment;->onDetach()V

    .line 373
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lezg$j;->fragment_enterprise_contact:I

    return v0
.end method
