.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1027
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .line 1028
    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    iget-object v6, v6, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1027
    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;Z[Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4$1;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->g(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V

    .line 1030
    return-void
.end method
