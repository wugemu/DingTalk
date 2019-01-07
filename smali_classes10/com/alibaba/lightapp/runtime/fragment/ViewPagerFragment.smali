.class public Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;
.super Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
.source "ViewPagerFragment.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

.field private c:Landroid/content/Context;

.field private d:Lhht;

.field private e:Lhdt;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->f:Z

    return-void
.end method

.method public static a(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;
    .locals 3
    .param p0, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .prologue
    .line 43
    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;-><init>()V

    .line 44
    .local v1, "webViewFragment":Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "TAB_CONFIGURATION_KEY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getTitle()Ljava/lang/String;

    .line 141
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 1412
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1413
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1414
    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->c:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "TAB_CONFIGURATION_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    .line 57
    .local v1, "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    if-eqz p1, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-nez v2, :cond_0

    .line 1065
    new-instance v2, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-direct {v2, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 1066
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v2, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setIWebViewListener(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;)V

    .line 1067
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setTabConfiguration(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 2505
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v1, :cond_0

    .line 2507
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    .line 2508
    if-eqz v0, :cond_0

    .line 2509
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Landroid/os/Bundle;)V

    .line 263
    :cond_0
    return-void
.end method

.method public final a(Lhdt;)V
    .locals 3
    .param p1, "iContext"    # Lhdt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    .line 126
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    .line 127
    invoke-interface {v1}, Lhdt;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    .line 129
    invoke-interface {v1}, Lhdt;->f()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-interface {v1, v2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .line 130
    .local v0, "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lhht;

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    .end local v0    # "delegate":Lcom/alibaba/lightapp/runtime/Component$a;
    invoke-direct {v1, v0}, Lhht;-><init>(Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    .line 134
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadUrlId"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    invoke-interface {v0, p2}, Lhdt;->c(Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    invoke-interface {v0, p1, p3, p4}, Lhdt;->b(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 292
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 3440
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3441
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 3442
    if-eqz v0, :cond_0

    .line 3443
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    invoke-interface {v0, p2}, Lhdt;->a(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 1493
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v1, :cond_0

    .line 1495
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    .line 1496
    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(ILandroid/view/KeyEvent;)Z

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getUrl()Ljava/lang/String;

    .line 149
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Lhht;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 285
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getGroupNavId()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    return-object v0
.end method

.method public final e()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a()V

    .line 180
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 1377
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1378
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1379
    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d()V

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Z)Z

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Z)Z

    .line 217
    :cond_0
    return v1
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->f:Z

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->f:Z

    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a()V

    .line 239
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->f:Z

    if-eqz v0, :cond_3

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->f:Z

    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->d:Lhht;

    invoke-virtual {v0}, Lhht;->a()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->e:Lhdt;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhdt;->c(Ljava/lang/String;)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .line 2204
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2205
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 2206
    if-eqz v0, :cond_2

    .line 2207
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a()V

    goto :goto_0

    .line 256
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cannot be removed from parent: "

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a()V

    .line 85
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a(Landroid/content/Context;)V

    .line 95
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    return-object v1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onPause()V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/ViewPagerFragment;->j()V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->onResume()V

    .line 102
    return-void
.end method
