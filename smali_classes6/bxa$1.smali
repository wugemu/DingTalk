.class final Lbxa$1;
.super Ljava/lang/Object;
.source "PlayerListeners.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxa;


# direct methods
.method constructor <init>(Lbxa;)V
    .locals 0
    .param p1, "this$0"    # Lbxa;

    .prologue
    .line 76
    iput-object p1, p0, Lbxa$1;->a:Lbxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 79
    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 1023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 79
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 2023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 3023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwz;

    .line 81
    .local v0, "listener":Lbwz;
    invoke-interface {v0}, Lbwz;->a()V

    goto :goto_0

    .line 84
    .end local v0    # "listener":Lbwz;
    :cond_0
    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 4023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 84
    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 5023
    iget-object v1, v1, Lbxa;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 85
    invoke-virtual {v1, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 87
    :cond_1
    iget-object v1, p0, Lbxa$1;->a:Lbxa;

    .line 6203
    iget-boolean v2, v1, Lbxa;->i:Z

    if-nez v2, :cond_2

    .line 6204
    iput-boolean v4, v1, Lbxa;->i:Z

    .line 6205
    new-instance v2, Lbvy;

    invoke-direct {v2}, Lbvy;-><init>()V

    .line 6206
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    .line 7043
    iget-object v3, v3, Lbwr;->c:Ljava/lang/String;

    .line 6206
    iput-object v3, v2, Lbvy;->a:Ljava/lang/String;

    .line 6207
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    invoke-virtual {v3}, Lbwr;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbvy;->b:Ljava/lang/String;

    .line 6208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbvy;->c:Ljava/lang/Integer;

    .line 6210
    invoke-static {}, Ligb;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lbxa;->k:Ljava/lang/String;

    .line 6211
    iget-object v1, v1, Lbxa;->k:Ljava/lang/String;

    iput-object v1, v2, Lbvy;->d:Ljava/lang/String;

    .line 6212
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbxe;->a(Lbvy;Lcom/alibaba/wukong/Callback;)V

    .line 88
    :cond_2
    return-void
.end method
