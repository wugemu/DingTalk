.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$13;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

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
    .line 1936
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$13;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1937
    return-void
.end method
