.class final Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;
.super Ljava/lang/Object;
.source "ProjectionEditItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionEditItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$3;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v1, v1, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 125
    :cond_0
    return-void
.end method
