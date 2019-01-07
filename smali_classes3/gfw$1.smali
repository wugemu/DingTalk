.class final Lgfw$1;
.super Ljava/lang/Object;
.source "SpaceRecentDentryCache.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfw;-><init>(Landroid/app/Activity;Lcom/alibaba/doraemon/image/ImageMagician;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfw;


# direct methods
.method constructor <init>(Lgfw;)V
    .locals 0
    .param p1, "this$0"    # Lgfw;

    .prologue
    .line 54
    iput-object p1, p0, Lgfw$1;->a:Lgfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 58
    const/4 v3, -0x5

    if-ne p1, v3, :cond_0

    .line 59
    iget-object v3, p0, Lgfw$1;->a:Lgfw;

    invoke-static {v3}, Lgfw;->a(Lgfw;)Ljava/util/HashMap;

    move-result-object v0

    .line 60
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 61
    invoke-static {}, Lgfw;->c()I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, "serverId":Ljava/lang/String;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v1    # "serverId":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 71
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
