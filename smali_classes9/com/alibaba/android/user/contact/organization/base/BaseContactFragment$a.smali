.class public abstract Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;
.super Ljava/lang/Object;
.source "BaseContactFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/widget/AbsListView;I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->c(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I

    .line 116
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    iget-boolean v1, v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->c:Z

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v2

    add-int v0, v1, v2

    .line 88
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->b(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->c(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    .line 89
    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->d(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;I)I

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment$a;->a(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method
