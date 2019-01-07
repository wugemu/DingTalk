.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;
.super Ljava/lang/Object;
.source "CMailSettingsSubscribeCainiaoActivity.java"

# interfaces
.implements Lacp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsSubscribeCainiaoActivity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;I)V

    .line 51
    return-void
.end method
