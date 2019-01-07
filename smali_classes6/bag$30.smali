.class final Lbag$30;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lbhu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 1030
    iput-object p1, p0, Lbag$30;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1040
    iget-object v0, p0, Lbag$30;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lbag$30;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbaf$b;->e(Ljava/util/List;)V

    .line 1043
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lbag$30;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lbag$30;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lbaf$b;->e(Ljava/util/List;)V

    .line 1036
    :cond_0
    return-void
.end method
