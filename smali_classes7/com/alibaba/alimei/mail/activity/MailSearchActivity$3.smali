.class final Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;
.super Ljava/lang/Object;
.source "MailSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

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
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .line 1156
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b:Ljava/lang/String;

    .line 1157
    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b:Ljava/lang/String;

    .line 151
    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Ljava/lang/String;)V

    .line 152
    return-void
.end method
