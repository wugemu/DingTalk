.class final Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;
.super Ljava/lang/Object;
.source "JoinGroupRequestActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

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
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->d(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I

    .line 80
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
    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 63
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->d(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .line 64
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)V

    .line 72
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
