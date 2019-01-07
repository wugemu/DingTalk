.class final Leks$6$1;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leks$6;->onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqt;

.field final synthetic b:Leks$6;


# direct methods
.method constructor <init>(Leks$6;Lgqt;)V
    .locals 0
    .param p1, "this$1"    # Leks$6;

    .prologue
    .line 259
    iput-object p1, p0, Leks$6$1;->b:Leks$6;

    iput-object p2, p0, Leks$6$1;->a:Lgqt;

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
    .line 262
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->b:Landroid/app/Activity;

    invoke-static {v2}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->d:Leks;

    invoke-static {v2}, Leks;->a(Leks;)V

    .line 266
    :cond_0
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    .line 1084
    .local v0, "param":Lgrc;
    iput-object v1, v0, Lgrc;->d:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2060
    iput-object v2, v0, Lgrc;->a:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Leks$6$1;->b:Leks$6;

    iget-object v2, v2, Leks$6;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 2076
    iput-object v2, v0, Lgrc;->c:Ljava/lang/String;

    .line 2108
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgrc;->g:Z

    .line 272
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Leks$6$1;->b:Leks$6;

    iget-object v3, v3, Leks$6;->b:Landroid/app/Activity;

    iget-object v4, p0, Leks$6$1;->a:Lgqt;

    invoke-virtual {v2, v3, v0, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    .line 274
    .end local v0    # "param":Lgrc;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method
