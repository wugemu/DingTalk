.class final Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$3;
.super Ljava/lang/Object;
.source "TeleConfAlarmActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 202
    check-cast p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    check-cast p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 1205
    iget-wide v0, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    iget-wide v2, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    iget-wide v2, p2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 202
    goto :goto_0
.end method
