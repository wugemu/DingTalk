.class final Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;
.super Ljava/lang/Object;
.source "CMailQRBindOrgMailPortalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;->a:Ljava/util/List;

    invoke-static {v0, p2, v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;ILjava/util/List;)V

    .line 288
    return-void
.end method
