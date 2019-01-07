.class final Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/MenuDialog$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->c:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    iput p3, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 1048
    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 505
    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 2048
    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->c:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->c:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a$1;->c:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$a;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 511
    :cond_0
    return-void
.end method
