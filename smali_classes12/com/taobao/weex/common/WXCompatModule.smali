.class public abstract Lcom/taobao/weex/common/WXCompatModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXCompatModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
    }
.end annotation


# instance fields
.field private mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 39
    new-instance v0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;-><init>(Lcom/taobao/weex/common/WXCompatModule;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 40
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "actionActivityResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "actionRequestPermissionsResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 44
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 55
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 50
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 47
    return-void
.end method
