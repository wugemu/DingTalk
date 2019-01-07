.class final Lcom/alibaba/android/user/login/VerifyContactActivity$1;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 119
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfsb;

    .line 120
    .local v4, "verifyContactObject":Lfsb;
    iget-boolean v6, v4, Lfsb;->d:Z

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v4, Lfsb;->d:Z

    .line 121
    iget-boolean v6, v4, Lfsb;->d:Z

    if-eqz v6, :cond_2

    .line 122
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 126
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfrc$a;

    .line 127
    .local v5, "viewHolder":Lfrc$a;
    iget-object v6, v5, Lfrc$a;->c:Landroid/widget/CheckBox;

    iget-boolean v8, v4, Lfsb;->d:Z

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    iget-object v8, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c(Lcom/alibaba/android/user/login/VerifyContactActivity;)I

    move-result v8

    if-le v6, v8, :cond_0

    .line 130
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsb;

    .line 131
    .local v0, "oldContact":Lfsb;
    iput-boolean v7, v0, Lfsb;->d:Z

    .line 132
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 133
    .local v2, "oldIndex":I
    if-ltz v2, :cond_0

    .line 134
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->d(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v8, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/VerifyContactActivity;->d(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v2, v8

    iget-object v9, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/login/VerifyContactActivity;->d(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "oldView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrc$a;

    .line 137
    .local v1, "oldHolder":Lfrc$a;
    iget-object v6, v1, Lfrc$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    .end local v0    # "oldContact":Lfsb;
    .end local v1    # "oldHolder":Lfrc$a;
    .end local v2    # "oldIndex":I
    .end local v3    # "oldView":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->supportInvalidateOptionsMenu()V

    .line 143
    return-void

    .end local v5    # "viewHolder":Lfrc$a;
    :cond_1
    move v6, v7

    .line 120
    goto :goto_0

    .line 124
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
