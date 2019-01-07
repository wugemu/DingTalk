.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V

    goto :goto_0
.end method
