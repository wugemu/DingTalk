.class public Lcom/mybank/android/phone/common/initialize/LogLoader;
.super Ljava/lang/Object;
.source "LogLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mybank/android/phone/common/initialize/LogLoader;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    .line 1027
    invoke-static {}, Lijo;->a()Lijo;

    move-result-object v0

    .line 1028
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v1

    .line 1029
    iget-object v2, p0, Lcom/mybank/android/phone/common/initialize/LogLoader;->a:Landroid/content/Context;

    invoke-static {v2}, Lika;->a(Landroid/content/Context;)V

    .line 1031
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    invoke-virtual {v1}, Lijn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lijz;->g(Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    .line 1218
    iget-object v3, v1, Lijn;->b:Ljava/lang/String;

    .line 1032
    invoke-interface {v2, v3}, Lijz;->h(Ljava/lang/String;)V

    .line 1034
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    .line 2086
    iget-object v3, v1, Lijn;->d:Ljava/lang/String;

    .line 1034
    invoke-interface {v2, v3}, Lijz;->f(Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    .line 2704
    iget-object v3, v0, Lijo;->a:Ljava/lang/String;

    .line 1035
    invoke-interface {v2, v3}, Lijz;->i(Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    invoke-virtual {v0}, Lijo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lijz;->j(Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    .line 3222
    iget-object v1, v1, Lijn;->c:Ljava/lang/String;

    .line 1037
    invoke-interface {v0, v1}, Lijz;->e(Ljava/lang/String;)V

    .line 24
    return-void
.end method
