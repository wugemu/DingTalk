.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;
.super Ljava/lang/Object;
.source "CMailSettingsMySubscribeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzt;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lzt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;->a:Lzt;

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
    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)Laeg;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$2;->a:Lzt;

    invoke-interface {v0, v1}, Laeg;->b(Lzt;)V

    .line 112
    return-void
.end method
