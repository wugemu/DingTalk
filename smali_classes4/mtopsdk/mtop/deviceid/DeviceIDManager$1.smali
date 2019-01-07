.class Lmtopsdk/mtop/deviceid/DeviceIDManager$1;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iput-object p2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    iget-object v2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "mDeviceId":Ljava/lang/String;
    iget-object v2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "mUtdid":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->this$0:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    iget-object v3, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;->val$appKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-static {v0}, Lmtopsdk/mtop/global/SDKUtils;->registerDeviceId(Ljava/lang/String;)V

    .line 96
    :cond_2
    return-object v0
.end method
