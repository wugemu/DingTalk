.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lafo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsl;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Lsl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->a:Lsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lafn;Ljava/lang/Object;)V
    .locals 2
    .param p1, "item"    # Lafn;
    .param p2, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 845
    .line 1136
    iget v0, p1, Lafn;->a:I

    .line 846
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    .line 860
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->a:Lsl;

    invoke-virtual {v1}, Lsl;->i()V

    .line 861
    return-void

    .line 848
    :sswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->d(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    goto :goto_0

    .line 851
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->e(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    goto :goto_0

    .line 854
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    goto :goto_0

    .line 857
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;->b:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->g(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    goto :goto_0

    .line 846
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
        0x1e -> :sswitch_2
        0x3b -> :sswitch_3
    .end sparse-switch
.end method
