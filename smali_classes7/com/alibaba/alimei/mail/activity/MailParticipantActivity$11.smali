.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Laff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 352
    .local p1, "emailCidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Labn;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->dismissLoadingDialog()V

    .line 356
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    iput-object p1, v0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a:Ljava/util/Map;

    .line 357
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->c(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lada;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 358
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    invoke-virtual {v0, p1}, Lada;->b(Ljava/util/Map;)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->i(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;I)I

    goto :goto_0
.end method
