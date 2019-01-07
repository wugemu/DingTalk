.class final Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity$1;
.super Ljava/lang/Object;
.source "CMailSignDisclaimerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    .line 2176
    const-string/jumbo v1, "mail_sign_safe_open"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;)V

    .line 56
    return-void

    .line 2176
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
