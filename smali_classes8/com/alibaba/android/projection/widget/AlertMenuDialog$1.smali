.class final Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;
.super Ljava/lang/Object;
.source "AlertMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/AlertMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

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
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v1, p3}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a(Lcom/alibaba/android/projection/widget/AlertMenuDialog;I)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->b(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->b(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 115
    .local v0, "menu":Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    if-eqz v0, :cond_1

    .line 1219
    iget-object v1, v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    if-eqz v1, :cond_1

    .line 2219
    iget-object v1, v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 120
    .end local v0    # "menu":Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;->a:Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->dismiss()V

    .line 121
    return-void
.end method
