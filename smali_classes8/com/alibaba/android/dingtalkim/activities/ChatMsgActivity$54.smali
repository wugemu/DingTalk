.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Leci$b;


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
    .line 9627
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 9639
    return-void
.end method

.method public final a(Ldry;)V
    .locals 3
    .param p1, "messageItem"    # Ldry;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9630
    if-eqz p1, :cond_0

    .line 9631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p1, Ldry;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;Z)Z

    .line 9633
    :cond_0
    return-void
.end method
