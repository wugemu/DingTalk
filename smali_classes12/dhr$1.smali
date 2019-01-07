.class final Ldhr$1;
.super Ljava/lang/Object;
.source "LeaveCacheClearManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic b:Ldhr;


# direct methods
.method constructor <init>(Ldhr;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 0
    .param p1, "this$0"    # Ldhr;

    .prologue
    .line 89
    iput-object p1, p0, Ldhr$1;->b:Ldhr;

    iput-object p2, p0, Ldhr$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string/jumbo v1, "Leave"

    const-string/jumbo v2, "leavecache remove async start"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Ldhr$1;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v1}, Lcom/alibaba/doraemon/image/ImageMagician;->clearDiskCache()Z

    .line 96
    const-string/jumbo v1, "AUDIO"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 97
    .local v0, "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->clearDiskCache()Z

    .line 98
    const-string/jumbo v1, "Leave"

    const-string/jumbo v2, "leavecache remove space cache"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->i()V

    .line 101
    const-string/jumbo v1, "Leave"

    const-string/jumbo v2, "leavecache remove async end"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Ldhr$1;->b:Ldhr;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldhr;->a(Ldhr;Z)Z

    .line 103
    iget-object v1, p0, Ldhr$1;->b:Ldhr;

    invoke-static {v1}, Ldhr;->a(Ldhr;)V

    .line 104
    return-void
.end method
