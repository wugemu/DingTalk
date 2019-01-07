.class final Lacv$e$1;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacv$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic b:Lacv$e;


# direct methods
.method constructor <init>(Lacv$e;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "this$0"    # Lacv$e;

    .prologue
    .line 1196
    iput-object p1, p0, Lacv$e$1;->b:Lacv$e;

    iput-object p2, p0, Lacv$e$1;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1199
    iget-object v0, p0, Lacv$e$1;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$e$1;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lacv$e$1;->b:Lacv$e;

    iget-object v0, v0, Lacv$e;->c:Lacv;

    invoke-static {v0}, Lacv;->o(Lacv;)Lacv$d;

    move-result-object v0

    iget-object v1, p0, Lacv$e$1;->b:Lacv$e;

    iget-object v1, v1, Lacv$e;->c:Lacv;

    invoke-static {v1}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v1

    iget-object v2, p0, Lacv$e$1;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lacv$d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1202
    :cond_0
    return-void
.end method
