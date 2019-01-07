.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Ldnu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u()V
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
    .line 1666
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # J
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;)V

    move-object v1, p3

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$a;)V

    .line 1677
    return-void
.end method
