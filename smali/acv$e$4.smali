.class final Lacv$e$4;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic b:Lacv$e;


# direct methods
.method constructor <init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "this$0"    # Lacv$e;

    .prologue
    .line 1329
    iput-object p1, p0, Lacv$e$4;->b:Lacv$e;

    iput-object p2, p0, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1374
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->y:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1375
    const/4 v0, 0x1

    .line 1377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1366
    invoke-direct {p0}, Lacv$e$4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-nez v0, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    .line 1701
    iget-object v0, v0, Lacv$e;->v:Landroid/view/View;

    .line 1369
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1329
    check-cast p1, Ljava/util/List;

    .line 2332
    invoke-direct {p0}, Lacv$e$4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-nez v0, :cond_1

    .line 2356
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2336
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iget-object v1, p0, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 2337
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    .line 2701
    iget-object v0, v0, Lacv$e;->v:Landroid/view/View;

    .line 2337
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->o(Lacv;)Lacv$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2339
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    new-instance v1, Lacv$e$4$1;

    invoke-direct {v1, p0}, Lacv$e$4$1;-><init>(Lacv$e$4;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2349
    :cond_2
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-virtual {v0}, Lacv;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2350
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setEnabled(Z)V

    .line 2351
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setClickable(Z)V

    .line 2352
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setLongClickable(Z)V

    goto :goto_0

    .line 2354
    :cond_3
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setEnabled(Z)V

    .line 2355
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setClickable(Z)V

    .line 2356
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setLongClickable(Z)V

    goto :goto_0

    .line 2359
    :cond_4
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iget-object v1, p0, Lacv$e$4;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 2360
    iget-object v0, p0, Lacv$e$4;->b:Lacv$e;

    .line 3701
    iget-object v0, v0, Lacv$e;->v:Landroid/view/View;

    .line 2360
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
