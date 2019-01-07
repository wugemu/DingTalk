.class public abstract Lcom/alibaba/wukong/im/MessageChangeListener;
.super Ljava/lang/Object;
.source "MessageChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtListClearChange(J)V
    .locals 0
    .param p1, "createAt"    # J

    .prologue
    .line 29
    return-void
.end method

.method public onAtVersionChange(J)V
    .locals 0
    .param p1, "version"    # J

    .prologue
    .line 23
    return-void
.end method

.method public onRead(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public onVoiceTranslateEvent(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    .prologue
    .line 17
    return-void
.end method
