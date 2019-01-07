.class Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;
.super Ljava/lang/Object;
.source "WMLActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->setRight(ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

.field final synthetic val$page:Ljqe;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;->val$page:Ljqe;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;->val$page:Ljqe;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljqe;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method
