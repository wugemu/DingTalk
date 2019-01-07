.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$2;
.super Ljava/lang/Object;
.source "DocInsertPropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;

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
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;

    const-string/jumbo v1, "hr"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocInsertPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
