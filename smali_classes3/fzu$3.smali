.class final Lfzu$3;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcem;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

.field final synthetic k:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcem;Landroid/content/Context;ZLjava/lang/String;Lcma;JILjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lfzu$3;->a:Lcem;

    iput-object p2, p0, Lfzu$3;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lfzu$3;->c:Z

    iput-object p4, p0, Lfzu$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lfzu$3;->e:Lcma;

    iput-wide p6, p0, Lfzu$3;->f:J

    iput p8, p0, Lfzu$3;->g:I

    iput-object p9, p0, Lfzu$3;->h:Ljava/lang/String;

    iput-object p10, p0, Lfzu$3;->i:Ljava/util/ArrayList;

    iput-object p11, p0, Lfzu$3;->j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iput-object p12, p0, Lfzu$3;->k:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1233
    check-cast p1, Ljava/lang/String;

    .line 2237
    sget-object v0, Lfzu;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lfzu$3;->a:Lcem;

    iget-object v1, v1, Lcem;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lfzu$3;->a:Lcem;

    iget-object v1, v1, Lcem;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lfzu$3;->a:Lcem;

    iget-object v0, v0, Lcem;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzu$3;->a:Lcem;

    iget-object v0, v0, Lcem;->c:Ljava/util/Map;

    const-string/jumbo v1, "x-co-folder"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lfzu$3;->a:Lcem;

    iget-object v0, v0, Lcem;->c:Ljava/util/Map;

    const-string/jumbo v1, "x-co-folder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2241
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lfzu$3;->a:Lcem;

    iget-object v1, v1, Lcem;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lfzv;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    :cond_0
    iget-object v0, p0, Lfzu$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lfzu$3;->a:Lcem;

    iget-object v1, v1, Lcem;->a:Ljava/lang/String;

    new-instance v2, Lfzu$3$1;

    invoke-direct {v2, p0, p1}, Lfzu$3$1;-><init>(Lfzu$3;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lgpt;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 1233
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1291
    iget-object v0, p0, Lfzu$3;->e:Lcma;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lfzu$3;->e:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1287
    return-void
.end method
