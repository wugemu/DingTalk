.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;->a:Z

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
    .line 538
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)Ladb;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$3;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ladb;->a(Z)V

    .line 539
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 540
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
