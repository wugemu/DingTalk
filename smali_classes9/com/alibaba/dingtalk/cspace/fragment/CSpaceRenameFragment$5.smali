.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;
.super Ljava/lang/Object;
.source "CSpaceRenameFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 243
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1246
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0, p1, v1, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 252
    return-void
.end method
