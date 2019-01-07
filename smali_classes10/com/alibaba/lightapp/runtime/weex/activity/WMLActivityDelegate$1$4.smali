.class Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;
.super Ljava/lang/Object;
.source "WMLActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->hideActionBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

.field final synthetic val$page:Ljqe;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;->val$page:Ljqe;

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
    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;->val$page:Ljqe;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljqe;->showActionbar(Z)V

    .line 233
    return-void
.end method
