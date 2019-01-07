.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;
.super Ljava/lang/Object;
.source "CMailDistributeLimitOrgEmailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;Z)Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    .line 55
    return-void
.end method
