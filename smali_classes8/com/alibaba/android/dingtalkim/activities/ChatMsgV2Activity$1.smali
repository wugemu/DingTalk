.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lfzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfzm;Ljava/lang/String;)V
    .locals 1
    .param p1, "mailSendToIMDo"    # Lfzm;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lddz$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lddz$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lddz$a;->a(Lfzm;Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method
