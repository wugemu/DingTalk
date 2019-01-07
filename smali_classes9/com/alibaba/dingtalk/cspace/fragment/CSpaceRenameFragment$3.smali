.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$3;
.super Ljava/lang/Object;
.source "CSpaceRenameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a()V

    .line 162
    return-void
.end method
