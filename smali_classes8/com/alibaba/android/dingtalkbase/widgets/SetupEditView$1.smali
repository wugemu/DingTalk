.class final Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;
.super Ljava/lang/Object;
.source "SetupEditView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 49
    .local v0, "action":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    packed-switch v0, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
