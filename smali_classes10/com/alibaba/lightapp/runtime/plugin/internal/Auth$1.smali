.class Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->postLoginTempCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

.field final synthetic val$dt3rdPartyAuthObject:Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->val$dt3rdPartyAuthObject:Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

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
    .line 62
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->val$dt3rdPartyAuthObject:Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Auth;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    return-void
.end method
