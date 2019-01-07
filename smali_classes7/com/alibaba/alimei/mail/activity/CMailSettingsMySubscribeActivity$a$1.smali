.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;
.super Ljava/lang/Object;
.source "CMailSettingsMySubscribeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzt;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;Lzt;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;->a:Lzt;

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
    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$a$1;->a:Lzt;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Lzt;)V

    .line 155
    return-void
.end method
