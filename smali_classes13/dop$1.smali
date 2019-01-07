.class final Ldop$1;
.super Ljava/lang/Object;
.source "ChatMenuManger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldop;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/Message;Leav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldop;


# direct methods
.method constructor <init>(Ldop;)V
    .locals 0
    .param p1, "this$0"    # Ldop;

    .prologue
    .line 51
    iput-object p1, p0, Ldop$1;->a:Ldop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    if-ltz p2, :cond_0

    iget-object v1, p0, Ldop$1;->a:Ldop;

    .line 1018
    iget-object v1, v1, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 54
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 55
    iget-object v1, p0, Ldop$1;->a:Ldop;

    .line 2018
    iget-object v1, v1, Ldop;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 55
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcng;

    .line 56
    .local v7, "menu":Lcng;
    invoke-static {}, Ldoo;->a()Ldoo;

    move-result-object v1

    invoke-virtual {v1, v7}, Ldoo;->a(Lcng;)Ldon;

    move-result-object v0

    .line 57
    .local v0, "handler":Ldon;
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Ldop$1;->a:Ldop;

    .line 3018
    iget-object v1, v1, Ldop;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 58
    iget-object v2, p0, Ldop$1;->a:Ldop;

    .line 4018
    iget-object v2, v2, Ldop;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 58
    iget-object v3, p0, Ldop$1;->a:Ldop;

    .line 5018
    iget-object v3, v3, Ldop;->d:Lcom/alibaba/wukong/im/Message;

    .line 58
    iget-object v4, p0, Ldop$1;->a:Ldop;

    .line 6018
    iget-wide v4, v4, Ldop;->e:J

    .line 58
    iget-object v6, p0, Ldop$1;->a:Ldop;

    .line 7018
    iget-object v6, v6, Ldop;->f:Leav;

    .line 58
    invoke-interface/range {v0 .. v6}, Ldon;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    .line 61
    .end local v0    # "handler":Ldon;
    .end local v7    # "menu":Lcng;
    :cond_0
    return-void
.end method
