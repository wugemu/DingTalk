.class final Lafj$1;
.super Ljava/lang/Object;
.source "DragControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafj;


# direct methods
.method constructor <init>(Lafj;)V
    .locals 0
    .param p1, "this$0"    # Lafj;

    .prologue
    .line 80
    iput-object p1, p0, Lafj$1;->a:Lafj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const v1, 0x3f933333    # 1.15f

    .line 83
    iget-object v0, p0, Lafj$1;->a:Lafj;

    invoke-static {v0}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setScaleX(F)V

    .line 84
    iget-object v0, p0, Lafj$1;->a:Lafj;

    invoke-static {v0}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setScaleY(F)V

    .line 85
    iget-object v0, p0, Lafj$1;->a:Lafj;

    invoke-static {v0}, Lafj;->b(Lafj;)V

    .line 86
    iget-object v0, p0, Lafj$1;->a:Lafj;

    invoke-static {v0}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->setVisibility(I)V

    .line 87
    return-void
.end method
