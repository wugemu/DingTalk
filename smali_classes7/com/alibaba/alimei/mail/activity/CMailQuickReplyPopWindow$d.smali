.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;
.super Landroid/os/Handler;
.source "CMailQuickReplyPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .line 759
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 760
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 764
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 766
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 767
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->j(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->k(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    goto :goto_0
.end method
