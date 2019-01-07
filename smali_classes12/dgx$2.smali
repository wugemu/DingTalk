.class final Ldgx$2;
.super Ljava/lang/Object;
.source "ChatSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgx;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldgx;


# direct methods
.method constructor <init>(Ldgx;)V
    .locals 0
    .param p1, "this$0"    # Ldgx;

    .prologue
    .line 76
    iput-object p1, p0, Ldgx$2;->a:Ldgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "singlechat get conv fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Ldgx$2;->a:Ldgx;

    .line 1025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 94
    invoke-interface {v0, p1, p2}, Ldgw$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1079
    if-nez p1, :cond_0

    .line 1080
    iget-object v0, p0, Ldgx$2;->a:Ldgx;

    .line 2025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 1080
    const-string/jumbo v1, "-1"

    iget-object v2, p0, Ldgx$2;->a:Ldgx;

    .line 3025
    iget-object v2, v2, Ldgx;->a:Landroid/app/Activity;

    .line 1080
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldgw$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Ldgx$2;->a:Ldgx;

    .line 4025
    iget-object v0, v0, Ldgx;->b:Ldgw$b;

    .line 1083
    invoke-interface {v0, p1}, Ldgw$b;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
