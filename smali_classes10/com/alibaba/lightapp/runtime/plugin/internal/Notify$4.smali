.class Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$4;
.super Ljava/lang/Object;
.source "Notify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->hideCloseButton(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V

    .line 271
    return-void
.end method
