.class final Lcom/taobao/artc/internal/ArtcEngineImpl$6;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setChannelProfile(Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

.field final synthetic b:Z

.field final synthetic c:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->a:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    iput-boolean p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->a:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    invoke-virtual {v1}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ordinal()I

    move-result v1

    iget-boolean v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;->b:Z

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3300(Lcom/taobao/artc/internal/ArtcEngineImpl;IZ)I

    .line 1066
    return-void
.end method
