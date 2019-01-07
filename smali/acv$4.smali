.class final Lacv$4;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacv;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic b:Lacv$a;

.field final synthetic c:I

.field final synthetic d:Lacv;


# direct methods
.method constructor <init>(Lacv;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lacv$a;I)V
    .locals 0
    .param p1, "this$0"    # Lacv;

    .prologue
    .line 426
    iput-object p1, p0, Lacv$4;->d:Lacv;

    iput-object p2, p0, Lacv$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iput-object p3, p0, Lacv$4;->b:Lacv$a;

    iput p4, p0, Lacv$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 429
    iget-object v0, p0, Lacv$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->shouldLoadData:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lacv$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->loadData()V

    .line 432
    :cond_0
    iget-object v0, p0, Lacv$4;->b:Lacv$a;

    iget-object v1, p0, Lacv$4;->d:Lacv;

    invoke-static {v1}, Lacv;->e(Lacv;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lacv$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget v3, p0, Lacv$4;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lacv$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;I)V

    .line 433
    return-void
.end method
