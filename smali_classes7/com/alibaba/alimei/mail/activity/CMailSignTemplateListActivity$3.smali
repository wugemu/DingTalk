.class final Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;
.super Ljava/lang/Object;
.source "CMailSignTemplateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)J

    move-result-wide v2

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$3;->a:I

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;JI)V

    .line 195
    return-void
.end method
