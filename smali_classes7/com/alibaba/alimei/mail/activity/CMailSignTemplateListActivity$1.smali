.class final Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;
.super Ljava/lang/Object;
.source "CMailSignTemplateListActivity.java"

# interfaces
.implements Ladd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laca;)V
    .locals 4
    .param p1, "item"    # Laca;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iget-wide v2, p1, Laca;->b:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)J

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Ladd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ladd;->a(J)V

    .line 128
    :cond_0
    return-void
.end method
