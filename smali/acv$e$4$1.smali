.class final Lacv$e$4$1;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv$e$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacv$e$4;


# direct methods
.method constructor <init>(Lacv$e$4;)V
    .locals 0
    .param p1, "this$1"    # Lacv$e$4;

    .prologue
    .line 1339
    iput-object p1, p0, Lacv$e$4$1;->a:Lacv$e$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1342
    iget-object v0, p0, Lacv$e$4$1;->a:Lacv$e$4;

    iget-object v0, v0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$e$4$1;->a:Lacv$e$4;

    iget-object v0, v0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->o(Lacv;)Lacv$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$e$4$1;->a:Lacv$e$4;

    iget-object v0, v0, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lacv$e$4$1;->a:Lacv$e$4;

    iget-object v0, v0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->o(Lacv;)Lacv$d;

    move-result-object v0

    iget-object v1, p0, Lacv$e$4$1;->a:Lacv$e$4;

    iget-object v1, v1, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface {v0, v1}, Lacv$d;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 1345
    :cond_0
    return-void
.end method
