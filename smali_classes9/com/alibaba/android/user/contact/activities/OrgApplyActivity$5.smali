.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I

    .line 154
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 139
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->f(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Z)V

    .line 147
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
