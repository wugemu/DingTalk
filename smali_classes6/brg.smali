.class public final Lbrg;
.super Lbqx;
.source "RedoDescriptor.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lbqx;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    sget v2, Lbqt$f;->icon_wd_redo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;Ljava/lang/Integer;)V

    iput-object v0, p0, Lbrg;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbrg;->a:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lbrg;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "redo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "redo"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbrg;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lbrg;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbrg;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "redo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lbrg;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "redo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "disable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "disable":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
