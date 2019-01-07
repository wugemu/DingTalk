.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;
.super Ljava/lang/Object;
.source "InputPanelView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method
