.class final Lacv$2;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacv;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacv;


# direct methods
.method constructor <init>(Lacv;)V
    .locals 0
    .param p1, "this$0"    # Lacv;

    .prologue
    .line 283
    iput-object p1, p0, Lacv$2;->a:Lacv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lacv$2;->a:Lacv;

    invoke-static {v1}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lacv$2;->a:Lacv;

    invoke-static {v1}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lacv$2;->a:Lacv;

    const-string/jumbo v2, "pref_key_mail_revoke_guide"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v1, v0}, Lacv;->a(Lacv;Z)Z

    .line 290
    iget-object v0, p0, Lacv$2;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method
