.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;
.super Ljava/lang/Object;
.source "MyRedPacketsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    .prologue
    .line 111
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
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
    .local p0, "this":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;, "Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v1, p3, v5

    .line 115
    .local v1, "dataIndex":I
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v1, v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v3

    .line 118
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_redpack_record_delete_enable"

    .line 1083
    invoke-virtual {v5, v6, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 118
    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->a(I)Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;

    move-result-object v2

    .line 122
    .local v2, "params":Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;
    if-eqz v2, :cond_0

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-array v5, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;

    sget v7, Lcaj$f;->dt_redpack_record_delete:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$2;Lcom/alibaba/android/dingtalk/redpackets/fragments/MyRedPacketsFragment$a;I)V

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v3, v4

    .line 134
    goto :goto_0
.end method
