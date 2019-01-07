.class final Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;
.super Ljava/lang/Object;
.source "SpaceLinkShareFragment.java"

# interfaces
.implements Lfzr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->n()Lfzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfzr$a",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    invoke-virtual {v0}, Lgez;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Z)V

    .line 222
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    .line 2211
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    invoke-virtual {v0}, Lgez;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Z)V

    .line 208
    return-void

    .line 2211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    .line 1216
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    invoke-virtual {v0}, Lgez;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Z)V

    .line 208
    return-void

    .line 1216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
