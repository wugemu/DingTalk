.class Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Input;->move(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/Input;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$move:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Input;Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Input;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/Input;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;->val$move:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Input$1;->val$move:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    return-void
.end method
