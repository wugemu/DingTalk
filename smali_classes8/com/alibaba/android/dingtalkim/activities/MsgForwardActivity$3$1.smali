.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->finish()V

    .line 1586
    return-void
.end method
