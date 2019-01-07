.class final Lalu$a;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lalu;


# direct methods
.method constructor <init>(Lalu;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lalu$a;->a:Lalu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 202
    invoke-static {}, Lamu;->b()V

    .line 203
    iget-object v3, p0, Lalu$a;->a:Lalu;

    invoke-static {v3}, Lalu;->a(Lalu;)I

    move-result v1

    .line 204
    .local v1, "deleteCount":I
    if-lez v1, :cond_0

    .line 205
    sget-object v3, Lalu;->c:Lalo;

    sget v4, Laln;->b:I

    const-string/jumbo v5, "time_ex"

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v4

    invoke-virtual {v3, v4}, Lalo;->a(Laln;)V

    .line 208
    :cond_0
    iget-object v3, p0, Lalu$a;->a:Lalu;

    invoke-static {v3}, Lalu;->b(Lalu;)Lals;

    move-result-object v3

    invoke-interface {v3}, Lals;->a()I

    move-result v0

    .line 209
    .local v0, "count":I
    const/16 v3, 0x2328

    if-le v0, v3, :cond_1

    .line 210
    iget-object v3, p0, Lalu$a;->a:Lalu;

    invoke-static {v3}, Lalu;->c(Lalu;)I

    move-result v2

    .line 211
    .local v2, "ret":I
    if-lez v2, :cond_1

    .line 212
    sget-object v3, Lalu;->c:Lalo;

    sget v4, Laln;->b:I

    const-string/jumbo v5, "count_ex"

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5, v6}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v4

    invoke-virtual {v3, v4}, Lalo;->a(Laln;)V

    .line 216
    .end local v2    # "ret":I
    :cond_1
    return-void
.end method
