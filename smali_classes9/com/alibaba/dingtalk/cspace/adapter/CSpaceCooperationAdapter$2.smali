.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;
.super Ljava/lang/Object;
.source "CSpaceCooperationAdapter.java"

# interfaces
.implements Lfzo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lgit;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;Landroid/widget/TextView;Lgit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->b:Lgit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "userNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->b:Lgit;

    iget-object v0, v0, Lgit;->h:Ljava/lang/Long;

    .line 1044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 183
    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceCooperationAdapter$2;->b:Lgit;

    iget-object v1, v1, Lgit;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
