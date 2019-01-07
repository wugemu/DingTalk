.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;
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
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

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
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Z)Z

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbqt$f;->dt_doc_merge_cell:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    const-string/jumbo v1, "merge"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->g(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Z)Z

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lbqt$f;->dt_doc_unmerge_cell:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    const-string/jumbo v1, "unmerge"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
