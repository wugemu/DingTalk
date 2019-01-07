.class final Leks$4;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leks;->a(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Leks;


# direct methods
.method constructor <init>(Leks;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Leks;

    .prologue
    .line 166
    iput-object p1, p0, Leks$4;->c:Leks;

    iput-object p2, p0, Leks$4;->a:Ljava/util/List;

    iput-object p3, p0, Leks$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 166
    check-cast p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1169
    iget-object v1, p0, Leks$4;->c:Leks;

    iget-object v0, p0, Leks$4;->a:Ljava/util/List;

    iget-object v2, p0, Leks$4;->b:Landroid/app/Activity;

    .line 2228
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_2

    .line 2229
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocLensProxyImpl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "upload file to space fail : params null"

    aput-object v3, v2, v5

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    :cond_1
    :goto_0
    return-void

    .line 2232
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 2233
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2234
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Leks;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2239
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2241
    new-instance v4, Lgrc;

    invoke-direct {v4}, Lgrc;-><init>()V

    .line 3084
    iput-object v0, v4, Lgrc;->d:Ljava/lang/String;

    .line 2243
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 4060
    iput-object v0, v4, Lgrc;->a:Ljava/lang/String;

    .line 2244
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 4076
    iput-object v0, v4, Lgrc;->c:Ljava/lang/String;

    .line 4108
    iput-boolean v5, v4, Lgrc;->g:Z

    .line 2247
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Leks$6;

    invoke-direct {v5, v1, v3, v2, p1}, Leks$6;-><init>(Leks;Ljava/util/LinkedList;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    const-class v1, Lgqt;

    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqt;

    .line 2287
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocLensProxyImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "create space folder exception : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " msg : "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Leks$4;->c:Leks;

    invoke-static {v0}, Leks;->a(Leks;)V

    .line 180
    const v0, 0x7f090255

    invoke-static {v0}, Lhcn;->a(I)V

    .line 181
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 174
    return-void
.end method
