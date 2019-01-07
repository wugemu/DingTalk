.class public final Lbqz;
.super Lbqx;
.source "ATDescriptor.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lbqx;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeCommand:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    sget v2, Lbqt$f;->icon_wd_at:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;Ljava/lang/Integer;)V

    iput-object v0, p0, Lbqz;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbqz;->a:Ljava/util/HashMap;

    .line 21
    iget-object v0, p0, Lbqz;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "mention"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbqz;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

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
