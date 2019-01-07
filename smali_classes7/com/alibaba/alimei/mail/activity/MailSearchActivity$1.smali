.class final Lcom/alibaba/alimei/mail/activity/MailSearchActivity$1;
.super Ljava/lang/Object;
.source "MailSearchActivity.java"

# interfaces
.implements Lgd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->finish()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
