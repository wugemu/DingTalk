.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldlz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;

    .prologue
    .line 3063
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    invoke-virtual {v0}, Lcrp;->a()V

    .line 3069
    :cond_0
    return-void
.end method
