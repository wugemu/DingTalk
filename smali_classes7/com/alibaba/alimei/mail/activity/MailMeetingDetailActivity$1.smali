.class final Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;
.super Ljava/lang/Object;
.source "MailMeetingDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 227
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1219
    if-eqz p1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailMeetingDetailActivity;)V

    .line 216
    :cond_0
    return-void
.end method
