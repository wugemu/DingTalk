.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;
.super Lcq;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    .line 266
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 267
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    new-instance v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->a(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    move-result-object v2

    .line 2055
    sget-object v1, Leoc$a;->a:Leoc;

    .line 1214
    sget-object v3, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    iget-object v4, v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->h:Ljava/lang/String;

    .line 2144
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1215
    :cond_1
    :goto_0
    iput-object v0, v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->e:Ljava/util/List;

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->g:Z

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->f:Z

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$a;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    move-result-object v0

    return-object v0

    .line 2148
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 2150
    invoke-static {v3, v0, v4}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 2151
    if-eqz v0, :cond_3

    .line 2154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 2156
    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method
