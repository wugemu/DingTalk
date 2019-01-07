.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$1;
.super Ljava/lang/Object;
.source "SheetOperatePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    const-string/jumbo v1, "insertRow"

    const-string/jumbo v2, "before"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method
