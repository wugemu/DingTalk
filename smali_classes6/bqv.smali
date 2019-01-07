.class public final Lbqv;
.super Ljava/lang/Object;
.source "ToolbarController.java"

# interfaces
.implements Lbrn;
.implements Lbro;
.implements Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbrn;",
        "Lbro;",
        "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a",
        "<",
        "Lbqy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbqw;

.field public b:Lbqy;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lbqy;",
            "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

.field public e:Lbqu;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;)V
    .locals 2
    .param p1, "keyboardToolbarLayout"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "DTControlContainerLayout could not be NULL!!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    .line 42
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setOnTooBarItemSelectListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolbarview/HorizontalToolBarScrollView$a;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 29
    check-cast p2, Lbqy;

    .line 1123
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    invoke-virtual {p2}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    if-ne v0, v1, :cond_2

    .line 1128
    iget-object v0, p0, Lbqv;->e:Lbqu;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lbqx;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lbqv;->e:Lbqu;

    check-cast p2, Lbqx;

    invoke-virtual {p2}, Lbqx;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lbqu;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v0, :cond_0

    .line 1136
    iput-object p2, p0, Lbqv;->b:Lbqy;

    .line 1138
    iget-object v0, p0, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    .line 1139
    if-nez v0, :cond_3

    .line 1140
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lbrp;->a(Lbqy;Landroid/content/Context;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    move-result-object v0

    .line 1141
    if-eqz v0, :cond_3

    .line 1142
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->a(Lbrn;)V

    .line 1143
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->setSubPanelShowDelegate(Lbro;)V

    .line 1144
    iget-object v1, p0, Lbqv;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_3
    if-eqz v0, :cond_4

    .line 1149
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->a(Lbqy;)V

    .line 1152
    :cond_4
    invoke-virtual {p2}, Lbqy;->c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    move-result-object v1

    .line 1153
    sget-object v2, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeMain:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;->getType()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    move-result-object v1

    if-ne v2, v1, :cond_0

    .line 1154
    iget-object v1, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setCurrentPropertyPanel(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "subPanelContent"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Lbqw;)V
    .locals 2
    .param p1, "source"    # Lbqw;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 48
    iput-object p1, p0, Lbqv;->a:Lbqw;

    .line 49
    iget-object v0, p0, Lbqv;->a:Lbqw;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lbqv;->d:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    iget-object v1, p0, Lbqv;->a:Lbqw;

    invoke-interface {v1}, Lbqw;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->setToolDescriptorItems(Ljava/util/List;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lbqv;->e:Lbqu;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lbqv;->e:Lbqu;

    invoke-interface {v1, v0}, Lbqu;->a(Ljava/util/HashMap;)V

    .line 65
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
