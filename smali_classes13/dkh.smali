.class public final Ldkh;
.super Ljava/lang/Object;
.source "PeerVO.java"


# instance fields
.field a:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 17
    return-void
.end method
