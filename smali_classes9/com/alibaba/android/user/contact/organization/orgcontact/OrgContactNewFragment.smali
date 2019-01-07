.class public Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "OrgContactNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;
.implements Lfir;
.implements Lfit;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/LinearLayout;

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/CheckBox;

.field private F:Z

.field private M:Z

.field private N:Z

.field private O:Lfkf;

.field private P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

.field private U:Z

.field private V:Landroid/view/View;

.field private W:Landroid/support/v7/app/AlertDialog;

.field private X:Landroid/content/BroadcastReceiver;

.field private Y:Lcne;

.field e:Z

.field f:Z

.field private h:Lcjo$a;

.field private i:I

.field private j:Z

.field private k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private l:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private m:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private n:Z

.field private o:Lfjv;

.field private p:J

.field private q:J

.field private r:J

.field private s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private t:Z

.field private u:Lfiq;

.field private v:Lfke;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    .line 112
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->j:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 120
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    .line 125
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    .line 126
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    .line 127
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->r:J

    .line 146
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F:Z

    .line 147
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    .line 162
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->U:Z

    .line 164
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->e:Z

    .line 165
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->f:Z

    .line 385
    new-instance v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->X:Landroid/content/BroadcastReceiver;

    .line 813
    new-instance v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->Y:Lcne;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->W:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->A:Landroid/view/View;

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
    .line 781
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v2, :cond_0

    .line 790
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->Q:Z

    if-nez v2, :cond_2

    .line 791
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0

    .line 795
    :cond_2
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 796
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v2, :cond_3

    .line 797
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 798
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 14230
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 799
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 15217
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 800
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->color_water_font_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 16142
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 803
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 804
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->P:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 806
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->color_water_font_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 807
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 808
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 809
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 101
    .line 21409
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 21410
    :cond_0
    :goto_0
    return-void

    .line 21413
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 21415
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21417
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21421
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 21422
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 21423
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 21424
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    .line 21425
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    .line 21427
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21429
    new-instance v3, Lcfi;

    invoke-direct {v3}, Lcfi;-><init>()V

    .line 21430
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcfi;->a:Ljava/lang/Long;

    .line 21432
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C_()V

    .line 21433
    new-instance v1, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    .line 21462
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21463
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 21465
    :goto_2
    new-instance v1, Lcom/alibaba/android/user/model/OrgAttachObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgAttachObject;-><init>()V

    .line 21466
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    .line 21467
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v4

    invoke-interface {v4, v3, v2, v1, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 11
    .param p1, "getMore"    # Z
    .param p2, "checkAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    .line 491
    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F:Z

    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->A:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    if-nez v1, :cond_1

    .line 530
    :goto_1
    return-void

    .line 8535
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8536
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 8537
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    sget v2, Lezg$h;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8538
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9064
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d:I

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lfkf;->a(Landroid/app/Activity;Ljava/lang/String;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto :goto_1

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v1, :cond_3

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 9222
    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v9, 0x1e

    move v8, p1

    invoke-virtual/range {v1 .. v10}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto :goto_1

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v1, :cond_4

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->r:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->r:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 9227
    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v9, 0x1e

    move v8, p1

    invoke-virtual/range {v1 .. v10}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto/16 :goto_1

    .line 510
    :cond_4
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v1, :cond_7

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    .line 9232
    new-instance v1, Lfkf$2;

    invoke-direct {v1, v2}, Lfkf$2;-><init>(Lfkf;)V

    .line 9267
    if-eqz v3, :cond_6

    .line 9268
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v6, Lcma;

    invoke-interface {v2, v1, v6, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 9271
    :cond_6
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    invoke-interface {v2, v4, v5, v0, v1}, Lezt;->c(JLjava/util/List;Lcma;)V

    goto/16 :goto_1

    .line 516
    .end local v0    # "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    const/4 v7, 0x0

    .line 517
    .local v7, "copy":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v1, :cond_8

    .line 518
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl()Lcdn;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->fromIdl(Lcdn;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v7

    .line 521
    :cond_8
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->j:Z

    if-eqz v1, :cond_a

    .line 522
    if-nez v7, :cond_9

    .line 523
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v7    # "copy":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 526
    .restart local v7    # "copy":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    :cond_9
    const/4 v1, 0x0

    iput v1, v7, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->nodeType:I

    .line 528
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lcne;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->Y:Lcne;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    .line 17257
    const/4 v1, 0x0

    .line 17258
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 17259
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 17260
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 17261
    if-eqz v0, :cond_0

    .line 17264
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move-object v1, v0

    .line 17267
    goto :goto_0

    .line 17269
    :cond_1
    if-eqz v1, :cond_2

    .line 17270
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17272
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v3, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$7;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 17281
    const-string/jumbo v0, "invite_new_members_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 101
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 14
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    const/4 v8, 0x1

    .line 101
    .line 17475
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F:Z

    .line 17476
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17477
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    if-eqz v0, :cond_3

    .line 17478
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 18206
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 18207
    invoke-static {v3}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 18208
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 18209
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-eqz v9, :cond_1

    .line 18210
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 18217
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, v1, Lfkf;->e:I

    iget v9, v1, Lfkf;->d:I

    sub-int v9, v0, v9

    invoke-virtual/range {v1 .. v10}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 17481
    :goto_1
    return-void

    .line 18211
    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_2

    .line 18212
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 18213
    :cond_2
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_0

    .line 18214
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 17480
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->o:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 19179
    iget-object v1, v1, Lfkf;->c:Ljava/util/List;

    .line 17480
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    invoke-virtual {v0, v1, v8, v2}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 17481
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    goto :goto_1

    .line 17484
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->o:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 20179
    iget-object v1, v1, Lfkf;->c:Ljava/util/List;

    .line 17484
    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    invoke-virtual {v0, v1, v2, v3}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 17485
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lfke;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    .line 20471
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lfkf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    return-wide v0
.end method


# virtual methods
.method public final H()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 766
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 773
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 4
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    if-eqz p1, :cond_0

    .line 854
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 855
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    if-eq v0, v3, :cond_2

    .line 857
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 858
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    .line 864
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->e:Z

    if-eqz v0, :cond_0

    .line 865
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->V:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->z:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    goto :goto_1

    :cond_4
    move v0, v2

    .line 865
    goto :goto_2

    :cond_5
    move v1, v2

    .line 866
    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    .line 366
    invoke-direct {p0, v1, v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(ZZ)V

    .line 368
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 873
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->b_(Z)V

    .line 544
    return-void
.end method

.method public final a(ZI)V
    .locals 8
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 648
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->e:Z

    .line 649
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    .line 650
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->b_(Z)V

    .line 651
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 656
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->S:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    if-eq v6, v0, :cond_1

    const/4 v0, 0x5

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    if-ne v0, v4, :cond_2

    :cond_1
    if-lez p2, :cond_2

    .line 10625
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    if-nez v0, :cond_6

    move v0, v1

    .line 660
    :goto_0
    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 662
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->S:Z

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 672
    :cond_3
    :goto_1
    sget-object v0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->g:Ljava/lang/String;

    const-string/jumbo v4, "getOrgList, scroll:%1$s, size:%2$s, getMore:%3$s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F:Z

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->o:Lfjv;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 12179
    iget-object v4, v4, Lfkf;->c:Ljava/util/List;

    .line 675
    iget v5, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    invoke-virtual {v0, v4, v3, v5}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 678
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->A:Landroid/view/View;

    if-eqz p1, :cond_d

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 681
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 683
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->V:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->z:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->n:Z

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12620
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 12621
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 13179
    iget-object v1, v1, Lfkf;->c:Ljava/util/List;

    .line 686
    invoke-virtual {v0, v1}, Lfke;->a(Ljava/util/List;)V

    .line 687
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    .line 688
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->c()V

    .line 689
    return-void

    .line 10628
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 11179
    iget-object v0, v0, Lfkf;->c:Ljava/util/List;

    .line 10629
    if-nez v0, :cond_7

    move v0, v1

    .line 10630
    goto/16 :goto_0

    .line 10632
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    move v0, v1

    .line 10633
    goto/16 :goto_0

    .line 10635
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 10636
    if-nez v0, :cond_a

    move v0, v1

    .line 10637
    goto/16 :goto_0

    .line 10639
    :cond_a
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-eq v0, v5, :cond_9

    move v0, v1

    .line 10640
    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 10643
    goto/16 :goto_0

    .line 665
    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->M:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 666
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->S:Z

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeHeaderView(Landroid/view/View;)Z

    .line 668
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->S:Z

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 678
    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 683
    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 684
    goto :goto_4
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 616
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "isSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 829
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    if-nez v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->U:Z

    .line 834
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 835
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 838
    :cond_2
    if-eqz p1, :cond_3

    .line 839
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    .line 16150
    iget-boolean v1, v0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    if-eqz v1, :cond_0

    .line 16151
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    goto :goto_0

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    .line 17144
    iget-boolean v1, v0, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a:Z

    if-eqz v1, :cond_0

    .line 17145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 548
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 10179
    iget-object v1, v4, Lfkf;->c:Ljava/util/List;

    .line 550
    .local v1, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 551
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 602
    .end local v1    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 553
    .restart local v1    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->f:Z

    .line 554
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 555
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 556
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v5, Lezg$g;->icon_empty_people:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 557
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v5, :cond_2

    .line 558
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v5, Lezg$l;->dt_contact_label_no_label:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 559
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v5, Lezg$l;->dt_contact_label_manager_not_set:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 568
    :goto_1
    iget v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 573
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->m:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v4, v4, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    if-eqz v4, :cond_5

    .line 574
    .local v0, "inviteFunctionEnabled":Z
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v4, Lezg$g;->ba4_btn:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 575
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 10185
    iget-object v2, v3, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 576
    .local v2, "permissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    if-eqz v2, :cond_6

    iget-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    if-eqz v3, :cond_6

    .line 577
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v4, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$12;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v4, Lezg$l;->add_staff_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    goto :goto_0

    .line 560
    .end local v0    # "inviteFunctionEnabled":Z
    .end local v2    # "permissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    :cond_2
    iget v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 562
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v5, Lezg$l;->empty_no_dept:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_1

    .line 564
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v5, Lezg$l;->empty_no_people:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_1

    :cond_5
    move v0, v3

    .line 573
    goto :goto_2

    .line 587
    .restart local v0    # "inviteFunctionEnabled":Z
    .restart local v2    # "permissionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;
    :cond_6
    if-eqz v0, :cond_0

    .line 588
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v4, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$13;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$13;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v4, Lezg$l;->dt_contact_manager_invite_colleagues_join:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    goto/16 :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 757
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 288
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2372
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2373
    const-string/jumbo v4, "com.workapp.org.dept.update"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2374
    const-string/jumbo v4, "com.workapp.org.dept.add"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2375
    const-string/jumbo v4, "com.workapp.org.dept.delete"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2376
    const-string/jumbo v4, "com.workapp.org.employee.add"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2377
    const-string/jumbo v4, "com.workapp.org.employee.update"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2378
    const-string/jumbo v4, "com.workapp.org.employee.delete"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2379
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 291
    new-instance v3, Lfke;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-direct {v3, v4, v5, v6, v7}, Lfke;-><init>(Landroid/app/Activity;IJ)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    .line 292
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 3179
    iget-object v4, v4, Lfkf;->c:Ljava/util/List;

    .line 292
    invoke-virtual {v3, v4}, Lfke;->a(Ljava/util/List;)V

    .line 293
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    const-string/jumbo v4, "OrgContactFragment"

    .line 4124
    iput-object v4, v3, Lfin;->d:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 5119
    iput-object v4, v3, Lfke;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 295
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->v:Lfke;

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->t:Z

    .line 5143
    iput-boolean v4, v3, Lfke;->f:Z

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->header_org_all_check:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->D:Landroid/view/View;

    .line 297
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->D:Landroid/view/View;

    sget v4, Lezg$h;->checkbox:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    .line 298
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->E:Landroid/widget/CheckBox;

    new-instance v4, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$8;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->D:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$9;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-direct {p0, v8, v8}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(ZZ)V

    .line 313
    iput-boolean v9, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->N:Z

    .line 315
    new-instance v3, Lfjv;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lfjv;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->o:Lfjv;

    .line 316
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-virtual {v3, v4, v5}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 317
    .local v2, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v2, :cond_0

    .line 318
    iget-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->Q:Z

    .line 319
    const-string/jumbo v3, "water"

    const-string/jumbo v4, "setting:%s, bool: %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->Q:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5714
    :cond_0
    new-instance v3, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->h:Lcjo$a;

    .line 5735
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->h:Lcjo$a;

    invoke-interface {v3, v4}, Lfac;->a(Lcjo$a;)V

    .line 323
    iget v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    if-ne v3, v10, :cond_2

    .line 324
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v4, Lezg$h;->active_invite_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    iput-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    .line 325
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    if-eqz v3, :cond_2

    .line 326
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    .line 327
    .local v0, "deptId":J
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->T:Lcom/alibaba/android/user/contact/activation/ActiveInviteView;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteView;->a(JJ)Z

    .line 333
    .end local v0    # "deptId":J
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_add_employee:I

    if-ne v0, v1, :cond_1

    .line 741
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->u:Lfiq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-interface {v0, v1, v2, v4, v5}, Lfiq;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_add_dept:I

    if-ne v0, v1, :cond_2

    .line 743
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->u:Lfiq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-interface {v0, v1, v2, v4, v5}, Lfiq;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->ll_edit_dept:I

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->u:Lfiq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-interface {v0, v1, v2}, Lfiq;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "display_enterprise_oid"

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "node"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "display_department_oid"

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    .line 184
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->q:J

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_label_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->r:J

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_filter_model"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v3, "key_need_change_dept"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->t:Z

    .line 191
    new-instance v0, Lfjk;

    invoke-direct {v0}, Lfjk;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->u:Lfiq;

    .line 192
    new-instance v0, Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-direct {v0, v3, v4, v6, v7}, Lfkf;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 193
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->j:Z

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->j:Z

    .line 1396
    iput-boolean v2, v0, Lfkf;->g:Z

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 2174
    iput-object p0, v0, Lfkf;->f:Lfir;

    .line 197
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->S:Z

    .line 199
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->l:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->l:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->p:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 202
    return-void

    :cond_2
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 337
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 338
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->U:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i:I

    if-eq v1, v5, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 6185
    iget-object v1, v1, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 342
    if-eqz v1, :cond_0

    .line 343
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_user_org_manage"

    .line 7083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 343
    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    .line 7185
    iget-object v1, v1, Lfkf;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 346
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x3

    sget v2, Lezg$l;->dt_contacts_menu_manage:I

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 348
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 225
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(I)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->x:Landroid/view/View;

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->y:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->y:Landroid/view/View;

    sget v1, Lezg$h;->iv_footer_invite_friend_margin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->V:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->y:Landroid/view/View;

    sget v1, Lezg$h;->rl_footer_invite_friend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->z:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->z:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$6;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->y:Landroid/view/View;

    sget v1, Lezg$h;->footer_loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->A:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_dept_control_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->B:Landroid/widget/LinearLayout;

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_employee:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->k:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->C:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->X:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 695
    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->X:Landroid/content/BroadcastReceiver;

    .line 697
    :cond_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->h:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 698
    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->h:Lcjo$a;

    .line 699
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->O:Lfkf;

    invoke-virtual {v0}, Lfkf;->b()V

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->l:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 14039
    iput-object v2, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .line 703
    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->l:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 704
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->W:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->W:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->W:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 707
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroy()V

    .line 708
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 355
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "contact_memberlist_management_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7876
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manager_org_member.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$5;-><init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 172
    sget v0, Lezg$j;->fragment_enterprise_contact:I

    return v0
.end method
