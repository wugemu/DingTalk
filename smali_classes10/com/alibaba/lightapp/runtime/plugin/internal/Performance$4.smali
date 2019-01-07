.class Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->setPageName(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;->val$name:Ljava/lang/String;

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
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;->val$name:Ljava/lang/String;

    .line 1044
    invoke-static {}, Lhpz;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    invoke-static {v0}, Lhqa;->a(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method
