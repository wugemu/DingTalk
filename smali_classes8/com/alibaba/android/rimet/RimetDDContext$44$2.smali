.class final Lcom/alibaba/android/rimet/RimetDDContext$44$2;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext$44;->onActivityResumed(Landroid/app/Activity;)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext$44;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$44;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/RimetDDContext$44;

    .prologue
    .line 3652
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$44$2;->b:Lcom/alibaba/android/rimet/RimetDDContext$44;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$44$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3691
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3652
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3652
    check-cast p1, Ljava/lang/String;

    .line 4656
    :try_start_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$44$2;->b:Lcom/alibaba/android/rimet/RimetDDContext$44;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4657
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$44$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$44$2$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$44$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lekw;->b(Lcom/alibaba/wukong/Callback;)V

    .line 4686
    :goto_0
    return-void

    .line 4681
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$44$2;->b:Lcom/alibaba/android/rimet/RimetDDContext$44;

    iget-object v0, v0, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->setAppFront()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4683
    :catch_0
    move-exception v0

    .line 4684
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$44$2;->b:Lcom/alibaba/android/rimet/RimetDDContext$44;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$44;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->setAppFront()V

    .line 4685
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
