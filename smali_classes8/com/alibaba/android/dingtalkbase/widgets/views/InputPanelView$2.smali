.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;
.super Landroid/os/Handler;
.source "InputPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
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
    .line 274
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 279
    return-void
.end method
