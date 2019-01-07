.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 56
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

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
    .line 59
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lctf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)Lctf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->getSelectionItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lctf;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
