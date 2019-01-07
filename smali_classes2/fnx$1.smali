.class final Lfnx$1;
.super Ljava/lang/Object;
.source "ExternalSharePresenter.java"

# interfaces
.implements Lfnw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnx;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnx;


# direct methods
.method constructor <init>(Lfnx;)V
    .locals 0
    .param p1, "this$0"    # Lfnx;

    .prologue
    .line 52
    iput-object p1, p0, Lfnx$1;->a:Lfnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 55
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lfnx$1;->a:Lfnx;

    .line 1019
    iget-object v0, v0, Lfnx;->a:Lfnv$b;

    .line 55
    invoke-interface {v0}, Lfnv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lfnx$1;->a:Lfnx;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lfnx;->a(Lfnx;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    .local p1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v0, p0, Lfnx$1;->a:Lfnx;

    .line 2019
    iget-object v0, v0, Lfnx;->a:Lfnv$b;

    .line 64
    invoke-interface {v0}, Lfnv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lfnx$1;->a:Lfnx;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lfnx;->a(Lfnx;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
