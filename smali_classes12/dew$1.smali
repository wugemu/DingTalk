.class public final Ldew$1;
.super Ljava/lang/Object;
.source "QuickPraiseGuideManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ldew;


# direct methods
.method public constructor <init>(Ldew;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Ldew;

    .prologue
    .line 45
    iput-object p1, p0, Ldew$1;->b:Ldew;

    iput-object p2, p0, Ldew$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Ldew$1;->b:Ldew;

    iget-object v1, p0, Ldew$1;->a:Landroid/view/View;

    .line 1076
    const-string/jumbo v2, "quick_praise_msg_guide"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1077
    const/4 v2, 0x0

    iput-object v2, v0, Ldew;->a:Lcom/alibaba/wukong/im/Message;

    .line 1078
    if-eqz v1, :cond_0

    .line 1079
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    return-void
.end method
