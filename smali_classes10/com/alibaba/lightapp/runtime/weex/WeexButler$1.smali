.class Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;
.super Ljava/lang/Object;
.source "WeexButler.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/weex/delegate/LoadingDelegate$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/WeexButler;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$100(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/WeexButler$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/WeexButler;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/WeexButler;->access$000(Lcom/alibaba/lightapp/runtime/weex/WeexButler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    :cond_0
    return-void
.end method
