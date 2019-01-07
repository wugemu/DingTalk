.class final Lcom/taobao/artc/utils/ArtcDeviceInfo$a;
.super Landroid/content/BroadcastReceiver;
.source "ArtcDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/utils/ArtcDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/utils/ArtcDeviceInfo;


# direct methods
.method constructor <init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo$a;->a:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 218
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, "level":I
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, "scale":I
    if-lez v1, :cond_0

    .line 222
    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    sput v3, Lcom/taobao/artc/utils/ArtcDeviceInfo;->battery_perc:I

    .line 225
    :cond_0
    const-string/jumbo v3, "temperature"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, "temp":I
    div-int/lit8 v3, v2, 0xa

    sput v3, Lcom/taobao/artc/utils/ArtcDeviceInfo;->temperature:I

    .line 229
    .end local v0    # "level":I
    .end local v1    # "scale":I
    .end local v2    # "temp":I
    :cond_1
    return-void
.end method
