.class final Lcom/alipay/mobile/nebula/util/H5Utils$2;
.super Ljava/lang/Object;
.source "H5Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/util/H5Utils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h5PermissionCallback:Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$2;->val$h5PermissionCallback:Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "ints"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$2;->val$h5PermissionCallback:Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;

    if-eqz v1, :cond_0

    .line 1390
    invoke-static {p3}, Ligd;->a([I)Z

    move-result v0

    .line 1391
    .local v0, "success":Z
    const-string/jumbo v1, "H5Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestPermissions onRequestPermissionsResult "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5Utils$2;->val$h5PermissionCallback:Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/permission/H5PermissionCallback;->onRequestPermissionsResult(Z)V

    .line 1395
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method
