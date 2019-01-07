.class Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
.super Landroid/content/BroadcastReceiver;
.source "WXCompatModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXCompatModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleReceive"
.end annotation


# instance fields
.field private mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/common/WXCompatModule;)V
    .locals 0
    .param p1, "module"    # Lcom/taobao/weex/common/WXCompatModule;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v5, v6

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 82
    :goto_1
    return-void

    .line 69
    :sswitch_0
    const-string/jumbo v5, "actionActivityResult"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "actionRequestPermissionsResult"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 71
    :pswitch_0
    const-string/jumbo v5, "requestCode"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 72
    .local v3, "requestCode":I
    const-string/jumbo v5, "resultCode"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 73
    .local v4, "resultCode":I
    iget-object v5, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v5, v3, v4, p2}, Lcom/taobao/weex/common/WXCompatModule;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 76
    .end local v3    # "requestCode":I
    .end local v4    # "resultCode":I
    :pswitch_1
    const-string/jumbo v5, "requestCode"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .restart local v3    # "requestCode":I
    const-string/jumbo v5, "permissions"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "permissions":[Ljava/lang/String;
    const-string/jumbo v5, "grantResults"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 79
    .local v1, "grantResults":[I
    iget-object v5, p0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;->mWXCompatModule:Lcom/taobao/weex/common/WXCompatModule;

    invoke-virtual {v5, v3, v2, v1}, Lcom/taobao/weex/common/WXCompatModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x124413e2 -> :sswitch_0
        0x717df348 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
