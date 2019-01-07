.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;


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
    .line 9240
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 1
    .param p1, "bannedInfo"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .prologue
    .line 9243
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    .line 9249
    :goto_0
    return-void

    .line 9246
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    goto :goto_0
.end method
