.class public final Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$3;
.super Ljava/lang/Object;
.source "ScrollViewAndWebViewContainer.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
