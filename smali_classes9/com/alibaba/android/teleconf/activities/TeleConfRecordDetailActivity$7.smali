.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 812
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 813
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 816
    .local v0, "lastItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;J)J

    .line 821
    .end local v0    # "lastItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 834
    return-void
.end method
