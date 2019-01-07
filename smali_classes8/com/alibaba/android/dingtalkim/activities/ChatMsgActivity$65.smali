.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lckj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "pre_key_chat_burn_clicked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 1199
    const/4 v0, 0x0

    return v0
.end method
