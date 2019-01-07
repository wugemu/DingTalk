.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappKeyboardPlugin.java"


# instance fields
.field private a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->c:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b()V

    .line 136
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b:Z

    return v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    const-string/jumbo v1, "MiniappKeyboardPlugin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "unregisterKeyboardEventListener"

    aput-object v4, v2, v3

    .line 2098
    const-string/jumbo v3, "mini_api"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;->execute()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    if-nez v1, :cond_0

    .line 76
    const-string/jumbo v1, "MiniappKeyboardPlugin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "registerKeyboardEventListener"

    aput-object v4, v2, v3

    .line 1098
    const-string/jumbo v3, "mini_api"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lhrs;->a(Landroid/app/Activity;Lhrs$a;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a:Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->c:Z

    return v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 46
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 1065
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 51
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0

    .line 51
    :sswitch_0
    const-string/jumbo v4, "addKeyboardShowListener"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "addKeyboardHideListener"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "offKeyboardShowListener"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "offKeyboardHideListener"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    .line 53
    :pswitch_0
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->c:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b:Z

    .line 62
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a()V

    goto :goto_0

    .line 65
    :pswitch_3
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->c:Z

    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a()V

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        -0x55c76254 -> :sswitch_3
        0x20f9ee99 -> :sswitch_0
        0x55edb067 -> :sswitch_2
        0x7544dbde -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onInitialize(Liob;)V
    .locals 1
    .param p1, "coreNode"    # Liob;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onInitialize(Liob;)V

    .line 153
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->c:Z

    .line 154
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b:Z

    .line 155
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 38
    const-string/jumbo v0, "addKeyboardShowListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "offKeyboardShowListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "addKeyboardHideListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "offKeyboardHideListener"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b()V

    .line 164
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onRelease()V

    .line 165
    return-void
.end method
