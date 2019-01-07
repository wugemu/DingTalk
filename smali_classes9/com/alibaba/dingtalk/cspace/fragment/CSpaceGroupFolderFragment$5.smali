.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;
.super Ljava/lang/Object;
.source "CSpaceGroupFolderFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
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
        "Lgnw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 331
    check-cast p1, Lgnw;

    .line 1334
    if-nez p1, :cond_0

    .line 1335
    const-string/jumbo v0, ""

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :goto_0
    return-void

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iget-boolean v1, p1, Lgnw;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;Z)V

    .line 1339
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->a:Landroid/widget/TextView;

    iget-boolean v2, p1, Lgnw;->a:Z

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(Landroid/widget/TextView;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 348
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "refreshReadOnlyFlagView: isFolderSafeMode, spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment$5;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .line 349
    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 348
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceGroupFolderFragment"

    const/4 v3, 0x0

    .line 351
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 344
    return-void
.end method
