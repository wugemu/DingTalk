.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c$1;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$c;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 289
    return-void
.end method
