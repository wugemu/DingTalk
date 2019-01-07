.class final Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$2;
.super Ljava/lang/Object;
.source "CMailSessionFragment.java"

# interfaces
.implements Lacv$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mailServerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;ZLcma;)V

    .line 175
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 1
    .param p1, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 179
    return-void
.end method
