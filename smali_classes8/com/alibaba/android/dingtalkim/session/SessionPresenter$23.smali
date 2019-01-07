.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Z)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 457
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;)V

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->a:Z

    .line 2116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 459
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "loadCategory fail s:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " s1:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 448
    check-cast p1, Ljava/util/List;

    .line 2451
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;)V

    .line 2452
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;->a:Z

    .line 4116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 448
    return-void
.end method
