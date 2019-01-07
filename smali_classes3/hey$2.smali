.class final Lhey$2;
.super Ljava/lang/Object;
.source "MiniAppListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

.field final synthetic b:Lhey;


# direct methods
.method constructor <init>(Lhey;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V
    .locals 0
    .param p1, "this$0"    # Lhey;

    .prologue
    .line 157
    iput-object p1, p0, Lhey$2;->b:Lhey;

    iput-object p2, p0, Lhey$2;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 161
    iget-object v7, p0, Lhey$2;->b:Lhey;

    invoke-static {v7}, Lhey;->c(Lhey;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$k;->sticky:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "sticky":Ljava/lang/String;
    iget-object v7, p0, Lhey$2;->b:Lhey;

    invoke-static {v7}, Lhey;->c(Lhey;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lhdn$k;->cancel_sticky:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "cancelSticky":Ljava/lang/String;
    iget-object v7, p0, Lhey$2;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getStickyStatus()Z

    move-result v6

    .line 164
    .local v6, "stickyStatus":Z
    new-array v5, v9, [Ljava/lang/CharSequence;

    aput-object v4, v5, v10

    .line 165
    .local v5, "stickyMenus":[Ljava/lang/CharSequence;
    new-array v2, v9, [Ljava/lang/CharSequence;

    aput-object v1, v2, v10

    .line 166
    .local v2, "cancelStickyMenus":[Ljava/lang/CharSequence;
    if-eqz v6, :cond_0

    move-object v3, v2

    .line 167
    .local v3, "menus":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v7, p0, Lhey$2;->b:Lhey;

    .line 168
    invoke-static {v7}, Lhey;->c(Lhey;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v7, p0, Lhey$2;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getMiniAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 170
    invoke-virtual {v7, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lhey$2$1;

    invoke-direct {v8, p0, v6}, Lhey$2$1;-><init>(Lhey$2;Z)V

    .line 171
    invoke-virtual {v7, v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 212
    return v9

    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v3    # "menus":[Ljava/lang/CharSequence;
    :cond_0
    move-object v3, v5

    .line 166
    goto :goto_0
.end method
