.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;->onException(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;

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
    .line 1832
    check-cast p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    check-cast p2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 2835
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    iget-object v2, p2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v2, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    iget-object v2, p2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v2, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1832
    goto :goto_0
.end method
