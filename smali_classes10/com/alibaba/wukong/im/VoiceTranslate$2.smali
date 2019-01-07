.class Lcom/alibaba/wukong/im/VoiceTranslate$2;
.super Ljava/lang/Object;
.source "VoiceTranslate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/VoiceTranslate;->dispatchVoiceTranslateEvent(Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

.field final synthetic val$data:Lcom/alibaba/wukong/im/VoiceTranslateData;

.field final synthetic val$entityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/VoiceTranslate;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    iput-object p2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->val$entityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->val$data:Lcom/alibaba/wukong/im/VoiceTranslateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v1}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$008(Lcom/alibaba/wukong/im/VoiceTranslate;)I

    .line 96
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v1}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$100(Lcom/alibaba/wukong/im/VoiceTranslate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;

    .line 97
    .local v0, "listener":Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;
    iget-object v2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->val$entityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->val$data:Lcom/alibaba/wukong/im/VoiceTranslateData;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;->onVoiceTranslateEvent(Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    goto :goto_0

    .line 99
    .end local v0    # "listener":Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v1}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$010(Lcom/alibaba/wukong/im/VoiceTranslate;)I

    .line 100
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v1}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$000(Lcom/alibaba/wukong/im/VoiceTranslate;)I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v1}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$200(Lcom/alibaba/wukong/im/VoiceTranslate;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    iget-object v2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    invoke-static {v2}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$200(Lcom/alibaba/wukong/im/VoiceTranslate;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$102(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/util/List;)Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$2;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/wukong/im/VoiceTranslate;->access$202(Lcom/alibaba/wukong/im/VoiceTranslate;Ljava/util/List;)Ljava/util/List;

    .line 106
    :cond_1
    return-void
.end method
