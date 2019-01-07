.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetInsertPropertyPanel;
.source "DocInsertPropertyPanel.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetInsertPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetInsertPropertyPanel;->a(Landroid/content/Context;)V

    .line 41
    sget v0, Lbqt$d;->insert_sheet_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lbqt$d;->insert_horizontal_line_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->b:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
