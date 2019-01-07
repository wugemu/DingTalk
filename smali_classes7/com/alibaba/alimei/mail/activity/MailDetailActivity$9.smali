.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lafo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lafo",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsl;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Lsl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;->a:Lsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lafn;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1456
    .line 2459
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Lafn;)V

    .line 2460
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$9;->a:Lsl;

    invoke-virtual {v0}, Lsl;->i()V

    .line 1456
    return-void
.end method
