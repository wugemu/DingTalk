.class final Lrx$1;
.super Ljava/lang/Object;
.source "CMailSupport.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lrx$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iput-object p2, p0, Lrx$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lrx$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lrx$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 685
    const-string/jumbo v0, "CMailSupport"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 686
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 665
    check-cast p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;

    .line 1668
    iget-object v0, p0, Lrx$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1671
    if-nez p1, :cond_1

    .line 1672
    iget-object v0, p0, Lrx$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v1, p0, Lrx$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lrx$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lrx$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lrx;->b(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mLastReqMillis:J

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x112a880

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1676
    iget-object v0, p0, Lrx$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v1, p0, Lrx$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lrx$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lrx$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lrx;->b(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1678
    :cond_2
    iget-object v1, p0, Lrx$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v2, p0, Lrx$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lrx$1;->c:Ljava/lang/String;

    iget-wide v4, p1, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mUid:J

    iget-object v6, p0, Lrx$1;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
