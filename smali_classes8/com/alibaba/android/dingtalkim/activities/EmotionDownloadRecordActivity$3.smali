.class final Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;
.super Ljava/lang/Object;
.source "EmotionDownloadRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a(J)V

    .line 158
    return-void
.end method
