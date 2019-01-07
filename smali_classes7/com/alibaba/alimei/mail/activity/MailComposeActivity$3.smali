.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1138
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getWidth()I

    move-result v4

    .line 1139
    .local v4, "width":I
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1140
    .local v0, "atGuideWidth":I
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int v3, v5, v6

    .line 1141
    .local v3, "targetWidth":I
    div-int/lit8 v5, v0, 0x2

    sub-int v2, v3, v5

    .line 1143
    .local v2, "offset":I
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1144
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1145
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    return-void
.end method
