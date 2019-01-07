.class final Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;
.super Ljava/lang/Object;
.source "MsgItemTwoOperationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;->b()V

    .line 72
    :cond_0
    return-void
.end method
