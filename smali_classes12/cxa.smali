.class public final Lcxa;
.super Lcxd;
.source "RobotMarkdownFromViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Z:Landroid/widget/TextView;

.field private a:Landroid/view/View;

.field private aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcxd;-><init>(Z)V

    .line 22
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
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcxa;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p2}, Ldkc;->E(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcxa;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcxa;->Z:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_chat_reaction_comment_reply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcxa;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcxa;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcxa;->Z:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_message_quote:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->chatting_item_markdown_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->chatting_item_from_markdown_text:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    sget v0, Lctk$f;->layout_reply:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxa;->a:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_reply_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxa;->Z:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcxa;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_reply_icon_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcxa;->aa:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 40
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 79
    .local v0, "id":I
    sget v1, Lctk$f;->layout_reply:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcxa;->P:Lcts$b;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcxa;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->E(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcxa;->P:Lcts$b;

    iget-object v2, p0, Lcxa;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v2}, Lcts$b;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcxa;->P:Lcts$b;

    iget-object v2, p0, Lcxa;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v2}, Lcts$b;->f(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcxa;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcxa;->b:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 67
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcxa;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcxa;->b:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 74
    :cond_0
    return-void
.end method
