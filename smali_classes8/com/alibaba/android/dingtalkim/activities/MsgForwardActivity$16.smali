.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$16;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcvm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)Z
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "isChecked"    # Z

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$16;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)Z

    move-result v0

    return v0
.end method
