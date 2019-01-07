.class final Lhdw$2;
.super Ljava/lang/Object;
.source "CommentDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhdw;


# direct methods
.method constructor <init>(Lhdw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhdw;

    .prologue
    .line 122
    iput-object p1, p0, Lhdw$2;->d:Lhdw;

    iput-object p2, p0, Lhdw$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lhdw$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lhdw$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lhdw$2;->d:Lhdw;

    iget-object v1, p0, Lhdw$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lhdw$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lhdw;->a(Lhdw;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lhdw$2;->d:Lhdw;

    invoke-static {v1}, Lhdw;->c(Lhdw;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lhdw$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lhdw$2;->b:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lhdw$2;->a:Ljava/lang/String;

    iget-object v6, p0, Lhdw$2;->b:Ljava/lang/String;

    iget-object v7, p0, Lhdw$2;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 135
    new-instance v0, Lhdw$2$1;

    invoke-direct {v0, p0}, Lhdw$2$1;-><init>(Lhdw$2;)V

    .line 160
    .local v0, "callback":Lcma;, "Lcma<Lgqw;>;"
    iget-object v1, p0, Lhdw$2;->d:Lhdw;

    invoke-static {v1}, Lhdw;->d(Lhdw;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lhdw$2;->d:Lhdw;

    invoke-static {v3}, Lhdw;->e(Lhdw;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Lgqw;>;"
    check-cast v0, Lcma;

    .line 163
    .restart local v0    # "callback":Lcma;, "Lcma<Lgqw;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lhdw$2;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;ILcma;)V

    .line 164
    return-void
.end method
