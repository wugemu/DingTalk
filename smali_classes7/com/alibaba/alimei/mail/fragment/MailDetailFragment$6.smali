.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-wide p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1450
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1453
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1454
    .local v3, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v4, "totalTime"

    iget-wide v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->a:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1456
    .local v2, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "EmailProviderBody.db"

    const-string/jumbo v5, "Body"

    invoke-static {v4, v5}, Lafh;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1457
    .local v1, "count":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Lajb;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "cntDesc":Ljava/lang/String;
    const-string/jumbo v4, "mail_count"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    const-string/jumbo v4, "is_from_server"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    const-string/jumbo v4, "file_size"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lais;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    sget-object v4, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v5, "CMail"

    const-string/jumbo v6, "loadMailBody"

    invoke-static {v4, v5, v6, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method
