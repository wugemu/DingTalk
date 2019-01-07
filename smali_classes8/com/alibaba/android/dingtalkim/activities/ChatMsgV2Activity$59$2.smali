.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;->a:Lcom/alibaba/wukong/im/Message;

    .line 4846
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v2, :cond_0

    .line 4847
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0, v1}, Lddx$a;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 3176
    :cond_0
    return-void
.end method
