.class Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->openFolder(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

.field final synthetic val$finalOrgId:J

.field final synthetic val$folderId:Ljava/lang/String;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$role:Ljava/lang/String;

.field final synthetic val$spaceId:Ljava/lang/String;

.field final synthetic val$spaceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$finalOrgId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$spaceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$folderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$folderName:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$spaceType:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$role:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$finalOrgId:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$spaceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$folderId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$folderName:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$spaceType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$3;->val$role:Ljava/lang/String;

    const-string/jumbo v9, "admin"

    .line 291
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 290
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 292
    return-void
.end method
