.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    .prologue
    .line 3296
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;->a:Z

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
    .line 3300
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)V

    .line 3301
    return-void
.end method
