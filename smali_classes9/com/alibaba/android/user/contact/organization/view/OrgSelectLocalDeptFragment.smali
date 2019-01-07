.class public Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "OrgSelectLocalDeptFragment.java"


# instance fields
.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private g:Lfke;

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->h:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lfke;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->h:I

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->k:J

    invoke-direct {v0, v1, v2, v4, v5}, Lfke;-><init>(Landroid/app/Activity;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->g:Lfke;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->g:Lfke;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfke;->a(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->g:Lfke;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->h:I

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->k:J

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 87
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->k:J

    invoke-virtual {v1, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 88
    .local v0, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    .line 89
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->j:Z

    .line 90
    const-string/jumbo v1, "water"

    const-string/jumbo v2, "setting:%s, bool: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v1, :cond_2

    .line 1116
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->j:Z

    if-eqz v1, :cond_4

    .line 1117
    const/16 v1, 0x10

    invoke-static {v1}, Lcms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v1, :cond_1

    .line 1119
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 1120
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 1230
    iput-boolean v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 1121
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->f()Ljava/lang/String;

    move-result-object v2

    .line 2217
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->k:J

    invoke-virtual {v2, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->color_water_font_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 3142
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 1125
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->I:Landroid/view/View;

    return-object v1

    .line 1128
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->color_water_font_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1129
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1130
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1131
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1134
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/view/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lezg$j;->fragment_select_local_dept_contact:I

    return v0
.end method
