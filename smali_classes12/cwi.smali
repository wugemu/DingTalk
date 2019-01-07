.class public final Lcwi;
.super Lcwk;
.source "MiniAppMarkdownFromViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcwk;-><init>(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 37
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lctk$g;->chatting_item_markdown_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->im_chatting_item_from_mini_app_markdown_text:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 31
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    return-void
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcwi;->S:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcwi;->S:Landroid/view/ViewGroup;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 44
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcwi;->S:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcwi;->S:Landroid/view/ViewGroup;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 51
    :cond_0
    return-void
.end method
