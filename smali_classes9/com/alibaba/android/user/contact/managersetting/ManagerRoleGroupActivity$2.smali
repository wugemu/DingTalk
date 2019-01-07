.class final Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;
.super Ljava/lang/Object;
.source "ManagerRoleGroupActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

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
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I

    .line 141
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
    .line 123
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v1

    add-int v7, v0, v1

    .line 126
    .local v7, "lastVisibleItemIndex":I
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->f(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v0

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I

    move-result v0

    if-eq v7, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lfhs$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0, v7}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lfhs$a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->i(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)J

    move-result-wide v4

    const/16 v6, 0x32

    invoke-interface/range {v0 .. v6}, Lfhs$a;->a(ZJJI)V

    .line 133
    .end local v7    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
