.class final Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;
.super Ljava/lang/Object;
.source "CMailQRBindOrgMailPortalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    .line 297
    :cond_0
    return-void
.end method
