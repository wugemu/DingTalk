.class final Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;
.super Ljava/lang/Object;
.source "DtSingleLineInputFormView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

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
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getEditText()Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormFixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView$3;->a:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a(Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 232
    :cond_0
    return-void
.end method
