.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;
.super Ljava/lang/Object;
.source "InputPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 317
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_auto_trans_switch_lang_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->s(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;)V

    .line 1255
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->show()V

    .line 334
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->q(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->r(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->s(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/String;

    move-result-object v2

    .line 2081
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->b:Ljava/lang/String;

    .line 2082
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->c:Ljava/lang/String;

    .line 2083
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog;->a()V

    goto :goto_0
.end method
