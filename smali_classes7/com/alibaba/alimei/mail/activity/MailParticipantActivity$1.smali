.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 198
    const-string/jumbo v0, "MailParticipantActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    check-cast p1, Ljava/util/List;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1188
    :cond_0
    if-nez p1, :cond_2

    .line 1189
    const-string/jumbo v0, "MailParticipantActivity"

    const-string/jumbo v1, "account alias: null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 179
    :cond_1
    return-void

    .line 1191
    :cond_2
    const-string/jumbo v0, "MailParticipantActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "account alias: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
