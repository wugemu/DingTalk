.class final Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;
.super Ljava/lang/Object;
.source "CMailCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(ILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setUri(Landroid/net/Uri;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lcom/alibaba/alimei/mail/widget/MediaPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MediaPreviewView;->setUri(Landroid/net/Uri;)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$4;->b:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;Z)V

    .line 555
    return-void
.end method
