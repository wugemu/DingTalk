.class final Lcwu$2;
.super Landroid/text/style/ClickableSpan;
.source "RecallViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcwu;


# direct methods
.method constructor <init>(Lcwu;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcwu;

    .prologue
    .line 184
    iput-object p1, p0, Lcwu$2;->b:Lcwu;

    iput-object p2, p0, Lcwu$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcwu$2;->b:Lcwu;

    iget-object v0, v0, Lcwu;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcwu$2;->b:Lcwu;

    iget-object v0, v0, Lcwu;->P:Lcts$b;

    iget-object v1, p0, Lcwu$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->h(Lcom/alibaba/wukong/im/Message;)V

    .line 196
    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 187
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 189
    return-void
.end method
