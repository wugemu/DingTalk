.class final Lrx$2;
.super Ljava/lang/Object;
.source "CMailSupport.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx;->c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
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
    .line 702
    iput-object p1, p0, Lrx$2;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iput-object p2, p0, Lrx$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lrx$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lrx$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 702
    check-cast p1, Ljava/util/Map;

    .line 1705
    iget-object v0, p0, Lrx$2;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1710
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1711
    iget-object v0, p0, Lrx$2;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1714
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 1715
    invoke-static {}, Lpn;->a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    move-result-object v0

    .line 1716
    if-eqz v0, :cond_1

    .line 1717
    iget-object v1, p0, Lrx$2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v5, v2}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->saveUidByEmail(Ljava/lang/String;JLxv;)V

    .line 1721
    :cond_1
    iget-object v1, p0, Lrx$2;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v2, p0, Lrx$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lrx$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lrx$2;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 702
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 731
    iget-object v0, p0, Lrx$2;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 727
    return-void
.end method
