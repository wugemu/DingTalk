.class Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$3;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->setResourceLoadTime(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

.field final synthetic val$time:D


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$3;->val$time:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
