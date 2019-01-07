.class public Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "ManageOrgMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/view/View;

.field private D:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

.field private E:Ljava/lang/String;

.field private F:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private M:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private N:Z

.field private O:Lcom/alibaba/android/user/model/SWHrmObject;

.field private P:Landroid/support/v7/app/AlertDialog;

.field private Q:Landroid/content/BroadcastReceiver;

.field private R:Lcne;

.field e:Z

.field private f:Lcjo$a;

.field private g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private h:J

.field private i:J

.field private j:Lfiq;

.field private k:Lfjt;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:Lfkf;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 137
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    .line 138
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    .line 154
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->u:Z

    .line 164
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->z:Z

    .line 178
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->N:Z

    .line 293
    new-instance v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$5;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->Q:Landroid/content/BroadcastReceiver;

    .line 674
    new-instance v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$8;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->R:Lcne;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->P:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->C:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Lcom/alibaba/android/user/model/SWHrmObject;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/SWHrmObject;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->O:Lcom/alibaba/android/user/model/SWHrmObject;

    return-object p1
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
    .line 650
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v2, :cond_1

    .line 651
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->x:Z

    if-eqz v2, :cond_3

    .line 652
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v2, :cond_0

    .line 654
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 655
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 11230
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 656
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 12217
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 657
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->color_water_font_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 13142
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 661
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->w:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-virtual {v3, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->color_water_font_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 665
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 666
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 669
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Lfrt;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Lfrt;

    .prologue
    .line 117
    .line 14969
    if-eqz p1, :cond_0

    .line 14973
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    .line 14996
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14997
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14999
    :goto_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-interface {v1, v2, v3, p1, v0}, Lezt;->a(JLfrt;Lcma;)V

    .line 117
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 117
    .line 14761
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 14762
    :cond_0
    :goto_0
    return-void

    .line 14765
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14766
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 14767
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14769
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14772
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14773
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 14774
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 14775
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 14776
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    .line 14777
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->name:Ljava/lang/String;

    .line 14779
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14781
    new-instance v3, Lcfi;

    invoke-direct {v3}, Lcfi;-><init>()V

    .line 14782
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcfi;->a:Ljava/lang/Long;

    .line 14784
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->C_()V

    .line 14785
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$10;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    .line 14814
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14815
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 14817
    :goto_2
    new-instance v1, Lcom/alibaba/android/user/model/OrgAttachObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgAttachObject;-><init>()V

    .line 14818
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    .line 14819
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v4

    invoke-interface {v4, v3, v2, v1, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcne;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->R:Lcne;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "checkdStr"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, " "

    .end local p0    # "checkdStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private b(Z)V
    .locals 8
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 369
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->u:Z

    .line 370
    if-eqz p1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    if-eqz v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->z:Z

    if-eqz v0, :cond_3

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->y:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lfkf;->a(Landroid/app/Activity;Ljava/lang/String;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->D:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->D:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    .line 5425
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .line 6117
    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m:Landroid/view/View;

    .line 5425
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5426
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .line 7117
    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 5426
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5427
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .line 8117
    iget-object v1, v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m:Landroid/view/View;

    .line 5427
    sget v2, Lezg$h;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5428
    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;->a:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .line 9117
    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m:Landroid/view/View;

    .line 5428
    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lfkf;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Ljava/util/List;)Z
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    .line 15911
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->z:Z

    if-eqz v0, :cond_1

    .line 15920
    :cond_0
    :goto_0
    return v2

    .line 15915
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 15919
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 15924
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 15925
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v4, :cond_2

    .line 15926
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->N:Z

    .line 15927
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->isDeptManager:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    .line 117
    goto :goto_0

    :cond_3
    move v0, v2

    .line 15927
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static synthetic b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfjt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    .line 15003
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    if-eqz v0, :cond_0

    .line 15004
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    .line 13901
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ManageOrgMemberFragment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->B:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->N:Z

    return v0
.end method

.method public static synthetic f(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->A:Z

    return v0
.end method

.method public static synthetic g(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 824
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-nez v6, :cond_0

    .line 866
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v6, v6, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    if-nez v6, :cond_1

    .line 829
    sget v6, Lezg$l;->invite_close_tips:I

    invoke-static {v6}, Lcms;->a(I)V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v5, v6, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 834
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 836
    const-string/jumbo v5, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    .line 840
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v6, v6, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 841
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v6, v6, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, "msg":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 844
    .local v0, "info":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, v5}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 847
    const-string/jumbo v6, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    invoke-virtual {v0, v6}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v6, "invite_share_click"

    invoke-virtual {v0, v6}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v6

    const-class v7, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v6, v7}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 852
    .local v3, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 855
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lezg$l;->dt_invite_title_share_dingtalk:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lezg$l;->dt_invite_title_share_weixin_friend:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lezg$l;->dt_invite_title_share_sms:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v7, v7, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v1, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0

    .line 837
    .end local v0    # "info":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .end local v4    # "title":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v6

    const-string/jumbo v7, "depart_invite"

    invoke-virtual {v6, v7, v8, v9}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 838
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    const-string/jumbo v7, "&deptId="

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private h()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    goto :goto_0
.end method

.method public static synthetic h(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Lfkf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->u:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->B:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->N:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->z:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->A:Z

    return v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    invoke-virtual {v0}, Lfjt;->notifyDataSetChanged()V

    .line 693
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    if-eqz p1, :cond_2

    .line 393
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 395
    :cond_2
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 362
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->y:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->z:Z

    .line 364
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Z)V

    .line 365
    return-void

    :cond_0
    move v0, v1

    .line 363
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->F:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_2

    .line 406
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g()V

    goto :goto_0

    .line 408
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 259
    new-instance v1, Lfjt;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lfjt;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    .line 260
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    const-string/jumbo v2, "EditOrgContactFragment"

    .line 2124
    iput-object v2, v1, Lfin;->d:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    .line 2179
    iget-object v2, v2, Lfkf;->c:Ljava/util/List;

    .line 261
    invoke-virtual {v1, v2}, Lfjt;->a(Ljava/util/List;)V

    .line 262
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->k:Lfjt;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3054
    iput-object v2, v1, Lfjt;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 264
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->b(Z)V

    .line 266
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-virtual {v1, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 267
    .local v0, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    .line 268
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->x:Z

    .line 269
    const-string/jumbo v1, "water"

    const-string/jumbo v2, "setting:%s, bool: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->x:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3568
    :cond_0
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$6;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->f:Lcjo$a;

    .line 3589
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->f:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->a(Lcjo$a;)V

    .line 4280
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4281
    const-string/jumbo v2, "com.workapp.org.dept.update"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4282
    const-string/jumbo v2, "com.workapp.org.dept.add"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4283
    const-string/jumbo v2, "com.workapp.org.dept.delete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4284
    const-string/jumbo v2, "com.workapp.org.employee.add"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4285
    const-string/jumbo v2, "com.workapp.org.employee.update"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4286
    const-string/jumbo v2, "com.workapp.org.employee.delete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4287
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4288
    const-string/jumbo v2, "com.workapp.choose.people.from.dept"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4289
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_show_add_staff"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4742
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4743
    :cond_1
    :goto_0
    return-void

    .line 4745
    :cond_2
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org_contact.html"

    new-instance v3, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$9;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lezg$h;->tv_add_employee:I

    if-ne v0, v2, :cond_4

    .line 9611
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 9612
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 9613
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 9614
    if-eqz v0, :cond_2

    .line 9617
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    :goto_2
    move-object v1, v0

    .line 9620
    goto :goto_1

    .line 9622
    :cond_3
    if-eqz v1, :cond_0

    .line 9623
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9625
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v3, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$7;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$7;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 9633
    const-string/jumbo v0, "invite_new_members_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lezg$h;->tv_add_dept:I

    if-ne v0, v2, :cond_5

    .line 601
    const-string/jumbo v0, "org_add_subdept_click"

    const-string/jumbo v2, "org_id=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 10315
    invoke-static {v1, v0, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->j:Lfiq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-interface {v0, v1, v2, v4, v5}, Lfiq;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    goto/16 :goto_0

    .line 603
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_edit_dept:I

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->j:Lfiq;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-interface {v0, v1, v2}, Lfiq;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 196
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->i:J

    .line 198
    new-instance v1, Lfjk;

    invoke-direct {v1}, Lfjk;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->j:Lfiq;

    .line 199
    new-instance v1, Lfkf;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-direct {v1, v2, v3, v4, v5}, Lfkf;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    .line 200
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->D:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    .line 201
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->D:Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$a;

    .line 1174
    iput-object v2, v1, Lfkf;->f:Lfir;

    .line 203
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->h:J

    invoke-virtual {v1, v2, v3}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 204
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->E:Ljava/lang/String;

    .line 206
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 2009
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    const-class v4, Lcma;

    .line 2023
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2009
    invoke-static {v1, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-static {v2, v3, v1}, Lfvz;->b(JLcma;)V

    .line 208
    :cond_0
    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->M:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 209
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

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 231
    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->a(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->m:Landroid/view/View;

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->n:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_dept_control_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->o:Landroid/widget/LinearLayout;

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_no_authority:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->t:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_employee:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->q:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_add_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->r:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->s:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_edit_dept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->I:Landroid/view/View;

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
    .line 556
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 557
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->f:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->f:Lcjo$a;

    .line 559
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    invoke-virtual {v0}, Lfkf;->b()V

    .line 560
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->P:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->P:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->P:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 563
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onDestroy()V

    .line 564
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 961
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onHiddenChanged(Z)V

    .line 962
    if-nez p1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;->v:Lfkf;

    invoke-virtual {v0}, Lfkf;->a()V

    .line 965
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 188
    sget v0, Lezg$j;->fragment_manage_org_member:I

    return v0
.end method
