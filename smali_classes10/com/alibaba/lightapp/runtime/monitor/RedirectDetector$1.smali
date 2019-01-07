.class Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;
.super Ljava/lang/Object;
.source "RedirectDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;->enterOnPageFinished(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

.field final synthetic val$redirectCallback:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;->val$redirectCallback:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;->val$redirectCallback:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$1;->val$redirectCallback:Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/monitor/RedirectDetector$RedirectCallback;->callback()V

    .line 38
    :cond_0
    return-void
.end method
