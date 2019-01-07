.class final Lddy$17;
.super Lcom/alibaba/wukong/im/MessageChangeListener;
.source "ChatLoadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 279
    iput-object p1, p0, Lddy$17;->a:Lddy;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/MessageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVoiceTranslateEvent(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    .prologue
    .line 282
    iget-object v0, p0, Lddy$17;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 282
    invoke-interface {v0, p1, p2}, Lddx$b;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    .line 283
    return-void
.end method
