.class final Lcwl$1$1$1;
.super Ljava/lang/Object;
.source "MultiLinkViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwl$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwl$1$1;


# direct methods
.method constructor <init>(Lcwl$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcwl$1$1;

    .prologue
    .line 200
    iput-object p1, p0, Lcwl$1$1$1;->a:Lcwl$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    const-string/jumbo v0, "share_url"

    iget-object v1, p0, Lcwl$1$1$1;->a:Lcwl$1$1;

    iget-object v1, v1, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v0, "share_pic_url"

    iget-object v1, p0, Lcwl$1$1$1;->a:Lcwl$1$1;

    iget-object v1, v1, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "share_text"

    iget-object v1, p0, Lcwl$1$1$1;->a:Lcwl$1$1;

    iget-object v1, v1, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v0, "share_title"

    iget-object v1, p0, Lcwl$1$1$1;->a:Lcwl$1$1;

    iget-object v1, v1, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    return-object p1
.end method
