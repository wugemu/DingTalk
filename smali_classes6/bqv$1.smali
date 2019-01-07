.class public final Lbqv$1;
.super Ljava/lang/Object;
.source "ToolbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

.field final synthetic b:Lbqy;

.field final synthetic c:Lbqv;


# direct methods
.method public constructor <init>(Lbqv;Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;Lbqy;)V
    .locals 0
    .param p1, "this$0"    # Lbqv;

    .prologue
    .line 92
    iput-object p1, p0, Lbqv$1;->c:Lbqv;

    iput-object p2, p0, Lbqv$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    iput-object p3, p0, Lbqv$1;->b:Lbqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lbqv$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqv$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lbqv$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;

    iget-object v1, p0, Lbqv$1;->b:Lbqy;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;->a(Lbqy;)V

    .line 98
    :cond_0
    return-void
.end method
