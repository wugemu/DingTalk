.class Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;
.super Ljava/lang/Object;
.source "BlankPageDetector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;->this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;->this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;->this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1$2;->this$1:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->access$100(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    return-void
.end method
