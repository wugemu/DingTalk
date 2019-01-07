.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;
.super Ljava/lang/Object;
.source "DocFontPropertyPanel.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    const-string/jumbo v1, "color"

    invoke-static {p1}, Lbrv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method
