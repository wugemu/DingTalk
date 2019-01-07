.class Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;
.super Ljava/lang/Object;
.source "ReceiverMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Broadcast"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->this$0:Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mContext:Landroid/content/Context;

    .line 197
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/eventbus/ReceiverMaid$Broadcast;->mIntent:Landroid/content/Intent;

    .line 198
    return-void
.end method
