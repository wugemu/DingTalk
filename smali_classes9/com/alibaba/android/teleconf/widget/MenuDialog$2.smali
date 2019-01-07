.class final Lcom/alibaba/android/teleconf/widget/MenuDialog$2;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/MenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/MenuDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/MenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

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
    .line 234
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->b(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1, p3}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog;I)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->c(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Lewj$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->c(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Lewj$b;

    move-result-object v1

    invoke-interface {v1, p3}, Lewj$b;->a(I)V

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 244
    .local v0, "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    if-eqz v0, :cond_2

    .line 1121
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 244
    if-eqz v1, :cond_2

    .line 2121
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 249
    .end local v0    # "menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;->a:Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->dismiss()V

    .line 250
    return-void
.end method
