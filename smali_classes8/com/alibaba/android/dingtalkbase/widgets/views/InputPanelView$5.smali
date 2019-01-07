.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;
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
    .line 337
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_auto_trans_refresh_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method
