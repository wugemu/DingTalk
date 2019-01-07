.class final Lcxr$2;
.super Ljava/lang/Object;
.source "SystemMsgViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxr;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcxr;


# direct methods
.method constructor <init>(Lcxr;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcxr;

    .prologue
    .line 196
    iput-object p1, p0, Lcxr$2;->b:Lcxr;

    iput-object p2, p0, Lcxr$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    iget-object v1, v1, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    iget-object v1, v1, Lcxr;->Q:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v1, p0, Lcxr$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    iget-object v1, v1, Lcxr;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    invoke-static {v1}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 206
    invoke-static {}, Lcxr;->o()I

    move-result v0

    .line 207
    .local v0, "paddingTopAndBottom":I
    :goto_1
    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    invoke-static {v1}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    .line 208
    invoke-static {v1}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 209
    :cond_2
    iget-object v1, p0, Lcxr$2;->b:Lcxr;

    invoke-static {v1}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcxr$2;->b:Lcxr;

    invoke-static {v2}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcxr$2;->b:Lcxr;

    .line 210
    invoke-static {v3}, Lcxr;->a(Lcxr;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 209
    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 206
    .end local v0    # "paddingTopAndBottom":I
    :cond_3
    invoke-static {}, Lcxr;->p()I

    move-result v0

    goto :goto_1
.end method
