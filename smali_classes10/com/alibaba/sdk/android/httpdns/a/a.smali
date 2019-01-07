.class Lcom/alibaba/sdk/android/httpdns/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/a/f;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/a/d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/httpdns/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/d;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)J

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/httpdns/a/e;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a;->a:Lcom/alibaba/sdk/android/httpdns/a/d;

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
