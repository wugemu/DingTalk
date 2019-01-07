.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$2;
.super Ljava/lang/Object;
.source "AlignPropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;

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
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$2;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;

    const-string/jumbo v1, "indent-right"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
