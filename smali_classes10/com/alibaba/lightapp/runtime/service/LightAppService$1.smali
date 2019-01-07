.class final Lcom/alibaba/lightapp/runtime/service/LightAppService$1;
.super Ljava/lang/Object;
.source "LightAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/service/LightAppService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/service/LightAppService;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/service/LightAppService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/service/LightAppService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService$1;->a:Lcom/alibaba/lightapp/runtime/service/LightAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/service/LightAppService$1;->a:Lcom/alibaba/lightapp/runtime/service/LightAppService;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/service/LightAppService;->a(Lcom/alibaba/lightapp/runtime/service/LightAppService;)V

    .line 87
    return-void
.end method
