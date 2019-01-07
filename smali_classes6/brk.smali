.class public final Lbrk;
.super Lbqy;
.source "SheetOperateDescriptor.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lbqy;-><init>()V

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;->TypeMain:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;

    sget v2, Lbqt$f;->icon_wd_insertcell:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon$ToolbarType;Ljava/lang/Integer;)V

    iput-object v0, p0, Lbrk;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

    .line 33
    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "insertRow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "insertColumn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "deleteRow"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "deleteColumn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "merge"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "unmerge"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbrk;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;

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
    .line 48
    const-class v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    return-object v0
.end method
