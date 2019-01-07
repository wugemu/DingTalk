.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$6;
.super Ljava/lang/Object;
.source "CMailQuickReplyPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 647
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$6;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

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
    .line 650
    const-string/jumbo v0, "pref_key_mail_has_show_expression_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 651
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$6;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->f(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    return-void
.end method
