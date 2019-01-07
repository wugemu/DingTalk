.class final Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;
.super Ljava/lang/Object;
.source "RobotMarketActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 151
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 142
    return-void
.end method
