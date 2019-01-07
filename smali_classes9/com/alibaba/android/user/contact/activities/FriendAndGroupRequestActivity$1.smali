.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;
.super Ljava/lang/Object;
.source "FriendAndGroupRequestActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 144
    iput p2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->b:I

    .line 145
    iput p3, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->c:I

    .line 146
    iput p4, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->d:I

    .line 147
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 132
    if-nez p2, :cond_0

    .line 133
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->b:I

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->c:I

    add-int v0, v1, v2

    .line 134
    .local v0, "lastVisibleItemIndex":I
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->d:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->b:I

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Lflt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Lflt;

    move-result-object v1

    .line 1454
    iget-boolean v2, v1, Lflt;->a:Z

    if-nez v2, :cond_0

    .line 1457
    iget-boolean v2, v1, Lflt;->k:Z

    if-eqz v2, :cond_0

    .line 1460
    iput-boolean v3, v1, Lflt;->a:Z

    .line 1461
    invoke-virtual {v1, v3}, Lflt;->a(Z)V

    .line 140
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
