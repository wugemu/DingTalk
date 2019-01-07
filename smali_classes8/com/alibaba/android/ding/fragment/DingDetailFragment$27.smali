.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1229
    add-int/lit8 v5, p3, -0x1

    if-gez v5, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v3

    .line 1233
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v5

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 1234
    .local v1, "commentObject":Lcom/alibaba/android/ding/base/objects/CommentObject;
    if-eqz v1, :cond_0

    .line 1238
    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-eq v5, v6, :cond_0

    .line 1242
    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    iget-object v5, v5, Lcom/alibaba/android/ding/base/objects/CommentContent;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v6, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    if-ne v5, v6, :cond_0

    .line 1243
    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1245
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v2, Layz;

    .line 1247
    .local v2, "commentText":Layz;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1248
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Laxp$b;->ding_long_click_operation:I

    new-instance v5, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$27$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$27;Layz;)V

    invoke-virtual {v0, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1256
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move v3, v4

    .line 1258
    goto :goto_0
.end method
