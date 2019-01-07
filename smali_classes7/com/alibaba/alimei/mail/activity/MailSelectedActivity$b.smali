.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 291
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->h(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 293
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->i(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 294
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->j(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->l(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$b;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
