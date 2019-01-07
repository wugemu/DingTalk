.class public final Ldwc;
.super Ldwb;
.source "FeedsFloatWindowViewHolder.java"


# instance fields
.field b:Lhdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ldwb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->FEEDS:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createRuntimeEntry(Landroid/content/Context;)Lhdf;

    move-result-object v0

    iput-object v0, p0, Ldwc;->b:Lhdf;

    .line 43
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handleCreate()V

    .line 1055
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1056
    :cond_1
    invoke-virtual {p0}, Ldwc;->d()V

    .line 1146
    :cond_2
    :goto_0
    return-void

    .line 1060
    :cond_3
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Ldwc$1;

    invoke-direct {v1, p0}, Ldwc$1;-><init>(Ldwc;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1136
    if-eqz v0, :cond_2

    .line 1139
    if-nez p2, :cond_4

    .line 1140
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR object is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->toIDLModel()Ldck;

    move-result-object v2

    .line 1144
    if-nez v2, :cond_5

    .line 1145
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR model is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1148
    :cond_5
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/FloatingWindowIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/FloatingWindowIService;

    new-instance v3, Ldwa$1;

    invoke-direct {v3, v0}, Ldwa$1;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/models/idl/service/FloatingWindowIService;->getFloatingWindowUrl(Ldck;Liyv;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isFolded"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handleResume()V

    .line 116
    :cond_0
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->getView()Landroid/view/View;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "isFolded"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handlePause()V

    .line 123
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ldwc;->b:Lhdf;

    invoke-interface {v0}, Lhdf;->handleDestroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Ldwc;->b:Lhdf;

    .line 131
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Ldwc;->b:Lhdf;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Ldwc;->b:Lhdf;

    const-string/jumbo v1, "about:blank"

    invoke-interface {v0, v1}, Lhdf;->loadUrl(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
