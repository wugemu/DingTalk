.class final Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;
.super Ljava/lang/Object;
.source "SettingOrgBossActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I

    .line 167
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 146
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->c(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->d(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    .line 147
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->b(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->e(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;I)I

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;->a(Lcom/alibaba/android/user/contact/activities/SettingOrgBossActivity;Z)V

    goto :goto_0
.end method
