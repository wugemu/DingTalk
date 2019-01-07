.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b$1;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;

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
    .line 344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->e(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 345
    return-void
.end method
