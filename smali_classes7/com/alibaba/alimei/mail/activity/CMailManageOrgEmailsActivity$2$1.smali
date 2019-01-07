.class final Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2$1;
.super Ljava/lang/Object;
.source "CMailManageOrgEmailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2$1;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailManageOrgEmailsActivity;)V

    .line 121
    return-void
.end method
