.class public Lcom/taobao/weex/ui/component/WXText;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXText.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/FlatComponent;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXText$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Lcom/taobao/weex/ui/view/WXTextView;",
        ">;",
        "Lcom/taobao/weex/ui/flat/FlatComponent",
        "<",
        "Lcom/taobao/weex/ui/flat/widget/TextWidget;",
        ">;"
    }
.end annotation


# static fields
.field public static final sDEFAULT_SIZE:I = 0x20


# instance fields
.field private mFontFamily:Ljava/lang/String;

.field private mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

.field private mTypefaceObserver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 129
    new-instance v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-direct {v0, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXText;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method private registerTypefaceObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "desiredFontFamily"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    const-string/jumbo v0, "WXText"

    const-string/jumbo v1, "ApplicationContent is null on register typeface observer"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXText;->mFontFamily:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/taobao/weex/ui/component/WXText$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXText$1;-><init>(Lcom/taobao/weex/ui/component/WXText;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 255
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "type_face_available"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method


# virtual methods
.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 195
    :sswitch_0
    const-string/jumbo v1, "fontSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_0
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 199
    :pswitch_1
    const-string/jumbo v0, "black"

    goto :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x5a72f63 -> :sswitch_1
        0x15caa0f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createViewImpl()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 209
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 214
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "WXText"

    const-string/jumbo v1, "Unregister the typeface observer"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTypefaceObserver:Landroid/content/BroadcastReceiver;

    .line 219
    :cond_0
    return-void
.end method

.method public getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/taobao/weex/ui/flat/widget/TextWidget;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/ui/flat/widget/TextWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXText;->mTextWidget:Lcom/taobao/weex/ui/flat/widget/TextWidget;

    return-object v0
.end method

.method public bridge synthetic getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    new-instance v0, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXTextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "textView":Lcom/taobao/weex/ui/view/WXTextView;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXTextView;->holdComponent(Lcom/taobao/weex/ui/component/WXText;)V

    .line 136
    return-object v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public promoteToView(Z)Z
    .locals 2
    .param p1, "checkAncestor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {v0, p0, p1, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 164
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getExtra()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXText;->updateExtra(Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXTextView;

    .line 156
    .local v0, "text":Lcom/taobao/weex/ui/view/WXTextView;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setAriaLabel(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 171
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 171
    :sswitch_0
    const-string/jumbo v2, "lines"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "fontSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "fontWeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "fontStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "textDecoration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "textAlign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "textOverflow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "lineHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "fontFamily"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    .line 184
    :pswitch_1
    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXText;->registerTypefaceObserver(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_3
        -0x48ff636d -> :sswitch_a
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_2
        -0x1ebe99c5 -> :sswitch_8
        0x5a72f63 -> :sswitch_4
        0x6234eff -> :sswitch_0
        0x6ac9171 -> :sswitch_9
        0xf94e04f -> :sswitch_7
        0x15caa0f0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    .line 142
    instance-of v1, p1, Landroid/text/Layout;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 143
    check-cast v0, Landroid/text/Layout;

    .line 144
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXText;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/TextWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/flat/widget/TextWidget;->updateTextDrawable(Landroid/text/Layout;)V

    .line 151
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0    # "layout":Landroid/text/Layout;
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXTextView;->setTextLayout(Landroid/text/Layout;)V

    .line 148
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXText;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXTextView;->invalidate()V

    goto :goto_0
.end method
