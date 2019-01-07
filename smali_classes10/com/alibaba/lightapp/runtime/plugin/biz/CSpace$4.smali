.class Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->chooseSpaceDir(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

.field final synthetic val$orgId:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;->val$orgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$4;->val$orgId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;J)V

    .line 383
    return-void
.end method
