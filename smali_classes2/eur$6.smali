.class final Leur$6;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field final synthetic b:Leur;


# direct methods
.method constructor <init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 736
    iput-object p1, p0, Leur$6;->b:Leur;

    iput-object p2, p0, Leur$6;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 740
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "writeVisitedRecord click orgId = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leur$6;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    .line 741
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", targetUids = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Leur$6;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Leur$6;->b:Leur;

    iget-object v0, v0, Leur;->b:Landroid/app/Activity;

    iget-object v1, p0, Leur$6;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {v0, v1}, Lewb;->a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 743
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_visit_record_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 744
    return-void
.end method
