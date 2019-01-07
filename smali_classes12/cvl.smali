.class public abstract Lcvl;
.super Lctv;
.source "ForwardCombineViewHolder.java"


# instance fields
.field private S:Landroid/view/View$OnClickListener;

.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 32
    new-instance v0, Lcvl$1;

    invoke-direct {v0, p0}, Lcvl$1;-><init>(Lcvl;)V

    iput-object v0, p0, Lcvl;->S:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    sget v0, Lctk$f;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvl;->a:Landroid/widget/TextView;

    .line 68
    sget v0, Lctk$f;->tv_summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcvl;->b:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcvl;->r:Landroid/view/View;

    iget-object v1, p0, Lcvl;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;

    .line 78
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    iget-object v1, p0, Lcvl;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcvl;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;->summary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcvl;->a:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcvl;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
