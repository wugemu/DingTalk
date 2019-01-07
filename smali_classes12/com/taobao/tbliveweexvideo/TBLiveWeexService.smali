.class public Lcom/taobao/tbliveweexvideo/TBLiveWeexService;
.super Landroid/app/Service;
.source "TBLiveWeexService.java"

# interfaces
.implements Lcom/taobao/weex/ui/IExternalComponentGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalComponentClass(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "wxsdkInstance"    # Lcom/taobao/weex/WXSDKInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-class v0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
