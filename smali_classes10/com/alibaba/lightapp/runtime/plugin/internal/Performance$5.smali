.class Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$5;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->invalidatePanel(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
