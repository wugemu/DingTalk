.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;
.super Lckm$a;
.source "DingReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 172
    check-cast p1, Ljava/util/List;

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/util/List;)V

    .line 172
    return-void
.end method
