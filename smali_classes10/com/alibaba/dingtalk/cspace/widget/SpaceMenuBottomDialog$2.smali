.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;
.super Ljava/lang/Object;
.source "SpaceMenuBottomDialog.java"

# interfaces
.implements Lfzo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "userNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$2;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method
