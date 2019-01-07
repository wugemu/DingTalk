.class final Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;
.super Ljava/lang/Object;
.source "ActionMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1, p3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;I)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-interface {v1, v2, p3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;->onMenuClick(Landroid/content/DialogInterface;I)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 128
    .local v0, "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    if-eqz v0, :cond_2

    .line 1577
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    if-eqz v1, :cond_2

    .line 2577
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 133
    .end local v0    # "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;->a:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->dismiss()V

    .line 134
    return-void
.end method
