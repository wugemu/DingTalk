.class final Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelectionPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .prologue
    .line 292
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->a:I

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
    .line 295
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;, "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->clearFocus()V

    .line 296
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->requestFocusFromTouch()Z

    .line 297
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->a:I

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I

    move-result v0

    .line 298
    .local v0, "pos":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)V

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;I)I

    .line 300
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView$6;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V

    .line 301
    return-void
.end method
