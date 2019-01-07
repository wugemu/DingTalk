.class Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->setData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

.field final synthetic val$d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;->val$d:Lorg/json/JSONObject;

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
    .line 89
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;->val$d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {}, Lhpz;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    invoke-static {v0}, Lhqa;->b(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method
