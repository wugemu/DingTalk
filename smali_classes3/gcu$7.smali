.class final Lgcu$7;
.super Ljava/lang/Object;
.source "FavoriteProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgcu;->a(JLgcv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgcv;

.field final synthetic b:Lgcu;


# direct methods
.method constructor <init>(Lgcu;Lgcv;)V
    .locals 0
    .param p1, "this$0"    # Lgcu;

    .prologue
    .line 242
    iput-object p1, p0, Lgcu$7;->b:Lgcu;

    iput-object p2, p0, Lgcu$7;->a:Lgcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lgcu$7;->a:Lgcv;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lgcu$7;->a:Lgcv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgcv;->a(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Boolean;

    .line 1245
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1246
    if-eqz v0, :cond_0

    .line 1247
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v1

    invoke-virtual {v1}, Lgas;->b()V

    .line 1249
    :cond_0
    iget-object v1, p0, Lgcu$7;->a:Lgcv;

    if-eqz v1, :cond_1

    .line 1250
    iget-object v1, p0, Lgcu$7;->a:Lgcv;

    invoke-virtual {v1, v0}, Lgcv;->a(Z)V

    .line 242
    :cond_1
    return-void
.end method
