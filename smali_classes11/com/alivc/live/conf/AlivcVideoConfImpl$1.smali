.class Lcom/alivc/live/conf/AlivcVideoConfImpl$1;
.super Ljava/lang/Object;
.source "AlivcVideoConfImpl.java"

# interfaces
.implements Lorg/webrtc/alirtcInterface/CollectStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/conf/AlivcVideoConfImpl;->setVideoConfCollectStatusListener(Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;


# direct methods
.method constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/live/conf/AlivcVideoConfImpl;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$1;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectStatusInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, "collectStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$1;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$200(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$1;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-static {v0}, Lcom/alivc/live/conf/AlivcVideoConfImpl;->access$200(Lcom/alivc/live/conf/AlivcVideoConfImpl;)Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alivc/live/conf/AlivcVideoConfCollectStatusListener;->onCollectStatusInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 915
    :cond_0
    return-void
.end method
