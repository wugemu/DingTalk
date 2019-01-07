.class final Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 963
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 963
    check-cast p1, Ljava/lang/String;

    .line 1967
    :try_start_0
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->b:Lcom/alibaba/android/rimet/RimetDDContext$45;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1981
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1976
    :catch_0
    move-exception v0

    .line 1977
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_2

    .line 1978
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$5$1;->a:Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$45$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1980
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
