.class public final Lcxc;
.super Lcxd;
.source "RobotMarkdownToViewHolder.java"


# instance fields
.field protected a:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcxd;-><init>(Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcxc;->a:Ldac;

    iget-boolean v1, p0, Lcxc;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 29
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lctk$g;->chatting_item_markdown_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lctk$g;->chatting_item_to_markdown_text:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 22
    iget-object v0, p0, Lcxc;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcxc;->a:Ldac;

    .line 23
    return-void
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lcxc;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcxc;->b:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 46
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcxc;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcxc;->b:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 53
    :cond_0
    return-void
.end method
