.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->k(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lrz;

    move-result-object v0

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 2527
    const-string/jumbo v0, "mail_setting_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacg;->b(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method
