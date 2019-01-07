.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Ladc$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 194
    return-void
.end method

.method public final a(Laca;)V
    .locals 6
    .param p1, "sign"    # Laca;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 2213
    const-string/jumbo v0, "mail_signatureV2_Switch"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Laca;->b:J

    const-wide/16 v4, -0x1

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 189
    :cond_0
    return-void
.end method
