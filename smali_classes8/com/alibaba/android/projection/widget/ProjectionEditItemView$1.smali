.class final Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;
.super Ljava/lang/Object;
.source "ProjectionEditItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/widget/ProjectionEditItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v0, v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v0, v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->a:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    iget-object v0, v0, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method
