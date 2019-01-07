.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    .line 128
    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->b:I

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lfld;

    move-result-object v0

    invoke-virtual {v0, p2}, Lfld;->a(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->b:I

    .line 134
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->b:I

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    if-eq v0, v1, :cond_1

    .line 135
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->b:I

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lflc;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    invoke-virtual {v0, v1}, Lflc;->a(I)V

    .line 137
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .line 138
    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Z)Z

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$2;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 125
    :cond_0
    return-void
.end method
