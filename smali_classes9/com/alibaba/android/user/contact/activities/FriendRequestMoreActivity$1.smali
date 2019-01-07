.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

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
    .line 108
    iput p2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->b:I

    .line 109
    iput p3, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->c:I

    .line 110
    iput p4, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->d:I

    .line 111
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->b:I

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->c:I

    add-int v0, v1, v2

    .line 98
    .local v0, "lastVisibleItemIndex":I
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->d:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->b:I

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v1

    .line 1272
    iget-boolean v2, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    if-nez v2, :cond_0

    .line 1275
    iget-boolean v2, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->d:Z

    if-eqz v2, :cond_0

    .line 1278
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 1279
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->b:J

    const/16 v3, 0x14

    new-instance v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$2;

    invoke-direct {v6, v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$2;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V

    const-class v7, Lcma;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v6, v7, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v4, v5, v3, v1}, Lezv;->d(JILcma;)V

    .line 104
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
