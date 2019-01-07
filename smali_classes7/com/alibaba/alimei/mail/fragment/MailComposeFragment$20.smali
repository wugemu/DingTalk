.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 2530
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3044
    :cond_0
    :goto_0
    return-void

    .line 2533
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 3035
    :goto_1
    if-eqz p2, :cond_0

    .line 3038
    if-eqz v0, :cond_3

    .line 3039
    iget v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    if-eq v0, v3, :cond_0

    .line 3042
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollX()I

    move-result v0

    iget v2, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->scrollTo(II)V

    .line 3043
    iput v3, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    goto :goto_0

    .line 2533
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3046
    :cond_3
    iget v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    if-ne v0, v3, :cond_4

    .line 3047
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    .line 3049
    :cond_4
    iget-object v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3051
    iget-object v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v0}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3055
    iget-object v0, v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->setScrollY(I)V

    goto :goto_0
.end method
