.class public final Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;
.super Ljava/lang/Object;
.source "ChatMsgListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/wukong/im/Message;

.field b:I


# direct methods
.method private constructor <init>(Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "bottomOffset"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 64
    iput p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;->b:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/wukong/im/Message;IB)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;-><init>(Lcom/alibaba/wukong/im/Message;I)V

    return-void
.end method
