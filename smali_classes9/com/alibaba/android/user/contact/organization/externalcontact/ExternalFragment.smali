.class public Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "ExternalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfir;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:I

.field private g:J

.field private h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private j:Lfke;

.field private k:Lfjc;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/CheckBox;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lfjv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->s:Z

    .line 78
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->t:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->a(ZZ)V

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
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->t:Z

    .line 176
    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->s:Z

    .line 177
    if-eqz p1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->r:Ljava/lang/String;

    .line 2111
    iget-wide v6, v4, Lfjc;->d:J

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    .line 2112
    new-instance v6, Lfjc$1;

    invoke-direct {v6, v4, p1, p0, v0}, Lfjc$1;-><init>(Lfjc;ZLfir;Landroid/app/Activity;)V

    .line 2152
    if-eqz v0, :cond_0

    .line 2153
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v5, Lcma;

    invoke-interface {v2, v6, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v6, v0

    .line 2156
    :cond_0
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 2157
    const-string/jumbo v0, "-16"

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 2158
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-wide v8, v4, Lfjc;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz p1, :cond_1

    iget v3, v4, Lfjc;->b:I

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;->INIT_SHOW_SIZE:I

    add-int/lit8 v4, v4, 0x2

    .line 2159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2158
    invoke-interface/range {v0 .. v6}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 1216
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2064
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d:I

    goto :goto_0

    .line 2161
    :cond_4
    if-eqz p0, :cond_2

    .line 2162
    const/4 v0, 0x1

    invoke-interface {p0, v0, v3}, Lfir;->a(ZI)V

    goto :goto_1

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->g:J

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 3081
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 3082
    invoke-static {v3}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 3083
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 3084
    cmp-long v8, v6, v8

    if-eqz v8, :cond_7

    .line 3085
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3092
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v9, 0x1e

    move v8, p1

    invoke-virtual/range {v1 .. v10}, Lfjc;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    goto :goto_1

    .line 3086
    :cond_7
    if-eqz v3, :cond_8

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_8

    .line 3087
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 3088
    :cond_8
    if-eqz v3, :cond_6

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_6

    .line 3089
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V
    .locals 14
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    const/4 v8, 0x1

    .line 48
    .line 6159
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->s:Z

    .line 6160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6161
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->u:Z

    if-eqz v0, :cond_3

    .line 6162
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->g:J

    iget-object v10, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 7096
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 7097
    invoke-static {v3}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v5

    .line 7098
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 7099
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-eqz v9, :cond_1

    .line 7100
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7107
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, v1, Lfjc;->c:I

    iget v9, v1, Lfjc;->b:I

    sub-int v9, v0, v9

    invoke-virtual/range {v1 .. v10}, Lfjc;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;IJZILcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V

    .line 6165
    :goto_1
    return-void

    .line 7101
    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_2

    .line 7102
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 7103
    :cond_2
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_0

    .line 7104
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 6164
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->x:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 8076
    iget-object v1, v1, Lfjc;->a:Ljava/util/List;

    .line 6164
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    invoke-virtual {v0, v1, v8, v2}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 6165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    goto :goto_1

    .line 6168
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->x:Lfjv;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 9076
    iget-object v1, v1, Lfjc;->a:Ljava/util/List;

    .line 6168
    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 6169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    :cond_1
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

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->r:Ljava/lang/String;

    .line 194
    invoke-direct {p0, v1, v1}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->a(ZZ)V

    .line 196
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->b_(Z)V

    .line 225
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
    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->u:Z

    .line 265
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->b_(Z)V

    .line 266
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->t:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->w:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 268
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->w:Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->t:Z

    if-nez v0, :cond_3

    .line 272
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->v:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    if-ne v4, v0, :cond_2

    :cond_1
    if-lez p2, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 276
    iput-boolean v7, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->v:Z

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    :cond_3
    sget-object v0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->e:Ljava/lang/String;

    const-string/jumbo v3, "getOrgList, scroll:%1$s, size:%2$s, getMore:%3$s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->t:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->w:Z

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->removeFooterView(Landroid/view/View;)Z

    .line 285
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->w:Z

    .line 288
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->s:Z

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->x:Lfjv;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 5076
    iget-object v3, v3, Lfjc;->a:Ljava/util/List;

    .line 289
    iget v4, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    invoke-virtual {v0, v3, v7, v4}, Lfjv;->a(Ljava/util/List;ZI)V

    .line 292
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 6076
    iget-object v1, v1, Lfjc;->a:Ljava/util/List;

    .line 294
    invoke-virtual {v0, v1}, Lfke;->a(Ljava/util/List;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    invoke-virtual {v0}, Lfke;->notifyDataSetChanged()V

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->c()V

    .line 297
    return-void

    :cond_6
    move v0, v2

    .line 292
    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$4;-><init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 4076
    iget-object v0, v1, Lfjc;->a:Ljava/util/List;

    .line 231
    .local v0, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 240
    .end local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local v0    # "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$g;->icon_empty_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v2, Lezg$l;->empty_no_people:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Lfke;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->g:J

    invoke-direct {v0, v1, v2, v4, v5}, Lfke;-><init>(Landroid/app/Activity;IJ)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 1076
    iget-object v1, v1, Lfjc;->a:Ljava/util/List;

    .line 133
    invoke-virtual {v0, v1}, Lfke;->a(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1119
    iput-object v1, v0, Lfke;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->j:Lfke;

    const-string/jumbo v1, "ExternalContactFragmentser"

    .line 1124
    iput-object v1, v0, Lfin;->d:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->header_org_all_check:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->p:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->p:Landroid/view/View;

    sget v1, Lezg$h;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->q:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->p:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;-><init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0, v3, v3}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->a(ZZ)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->u:Z

    .line 156
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->f:I

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->g:J

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_filter_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->i:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "node"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 100
    new-instance v0, Lfjc;

    invoke-direct {v0}, Lfjc;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->k:Lfjc;

    .line 1071
    iput-object p0, v0, Lfjc;->e:Lfir;

    .line 103
    new-instance v0, Lfjv;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfjv;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->x:Lfjv;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->v:Z

    .line 105
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
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->m:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lezg$j;->fragment_org_external_contact:I

    return v0
.end method
