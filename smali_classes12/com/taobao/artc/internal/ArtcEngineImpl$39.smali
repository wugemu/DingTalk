.class final Lcom/taobao/artc/internal/ArtcEngineImpl$39;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setVideoProfile(Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field final synthetic b:Z

.field final synthetic c:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->a:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    iput-boolean p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 788
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setVideoProfile: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->a:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    invoke-virtual {v4}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->a:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    invoke-virtual {v1}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ordinal()I

    move-result v1

    iget-boolean v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;->b:Z

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$2400(Lcom/taobao/artc/internal/ArtcEngineImpl;IZ)I

    .line 790
    return-void
.end method
