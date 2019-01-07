.class final Lelg$4;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelg;
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
        "Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lelg;


# direct methods
.method constructor <init>(Lelg;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 266
    iput-object p1, p0, Lelg$4;->c:Lelg;

    iput-object p2, p0, Lelg$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lelg$4;->b:Landroid/app/Activity;

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
    .line 281
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lelg$4;->c:Lelg;

    invoke-static {v0}, Lelg;->d(Lelg;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lelg$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getTaoPasswordModel error code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 286
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    check-cast p1, Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;

    .line 1269
    iget-object v0, p0, Lelg$4;->c:Lelg;

    invoke-static {v0, p1}, Lelg;->a(Lelg;Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lelg$4;->c:Lelg;

    invoke-static {v0}, Lelg;->d(Lelg;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lelg$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1273
    iget-object v0, p0, Lelg$4;->c:Lelg;

    invoke-static {v0}, Lelg;->e(Lelg;)V

    .line 1275
    iget-object v0, p0, Lelg$4;->c:Lelg;

    iget-object v1, p0, Lelg$4;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lelg;->a(Lelg;Landroid/app/Activity;Lcom/alibaba/wukong/im/invitation/TaoPasswordObject;)V

    .line 266
    :cond_0
    return-void
.end method
