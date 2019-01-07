.class public final Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;
.super Ljava/lang/Object;
.source "MiniAppPermissionHintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;->b(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;)V

    .line 109
    return-void
.end method
