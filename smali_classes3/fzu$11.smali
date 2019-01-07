.class final Lfzu$11;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIILjava/util/List;)V
    .locals 1

    .prologue
    .line 1682
    iput-wide p1, p0, Lfzu$11;->a:J

    iput-object p3, p0, Lfzu$11;->b:Ljava/lang/String;

    iput p4, p0, Lfzu$11;->c:I

    iput p5, p0, Lfzu$11;->d:I

    iput p6, p0, Lfzu$11;->e:I

    iput p7, p0, Lfzu$11;->f:I

    iput-object p8, p0, Lfzu$11;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1685
    const-string/jumbo v1, "space_org_id"

    iget-wide v2, p0, Lfzu$11;->a:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1686
    const-string/jumbo v1, "conv_id"

    iget-object v2, p0, Lfzu$11;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    const-string/jumbo v1, "space_share_role"

    iget v2, p0, Lfzu$11;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1688
    const-string/jumbo v1, "space_mode"

    iget v2, p0, Lfzu$11;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    const-string/jumbo v1, "space_share_member_type"

    iget v2, p0, Lfzu$11;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    const-string/jumbo v1, "space_select_max"

    iget v2, p0, Lfzu$11;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1691
    iget-object v1, p0, Lfzu$11;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    .local v0, "shareMemberModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    iget-object v1, p0, Lfzu$11;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1695
    const-string/jumbo v1, "space_member_models"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1699
    .end local v0    # "shareMemberModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    :cond_0
    return-object p1
.end method
