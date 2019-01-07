.class final Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;
.super Ljava/lang/Object;
.source "CMailCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->a:I

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
    .line 593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->a:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;Z)V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$5;->a:I

    invoke-static {v1}, Lsc;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
