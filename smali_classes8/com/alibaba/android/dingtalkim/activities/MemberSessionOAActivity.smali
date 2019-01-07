.class public Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MemberSessionOAActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v5, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 42
    .local v4, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    sget v5, Lctk$i;->dt_newretail_tab_center_replay_title:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    const-string/jumbo v5, "intent_key_biz_tag"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 45
    .local v1, "targetTags":[J
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 46
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-wide v2, v1, v5

    .line 47
    .local v2, "tag":J
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->b:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "targetTags":[J
    .end local v2    # "tag":J
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v5, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_1
    new-instance v5, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 54
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 55
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v6, Lctk$g;->fragment_member_session_empty:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 56
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 1086
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->e:Z

    .line 57
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    invoke-virtual {v5}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    sget v6, Lctk$f;->root_view:I

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionOAActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 99
    return-void
.end method
