.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;
.super Ljava/lang/Object;
.source "CMailQuickReplyPopWindow.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    iput-object v1, v0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    .line 332
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 316
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 321
    return-void
.end method
