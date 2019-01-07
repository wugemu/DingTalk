.class final Lfak$9$2$1;
.super Lor;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak$9$2;->a()Lor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lor",
        "<",
        "Lcgc;",
        "Lcgc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lfak$9$2;


# direct methods
.method constructor <init>(Lfak$9$2;)V
    .locals 0
    .param p1, "this$2"    # Lfak$9$2;

    .prologue
    .line 659
    iput-object p1, p0, Lfak$9$2$1;->d:Lfak$9$2;

    invoke-direct {p0}, Lor;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 659
    check-cast p1, Lcgc;

    return-object p1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 659
    check-cast p1, Lcgc;

    .line 1669
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcgc;->b:Lcet;

    if-eqz v0, :cond_0

    .line 1672
    :try_start_0
    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcgc;->b:Lcet;

    iget-object v2, v2, Lcet;->a:Ljava/lang/Long;

    .line 1673
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->c:Ljava/lang/String;

    iget-object v5, p1, Lcgc;->b:Lcet;

    iget-object v5, v5, Lcet;->d:Ljava/lang/String;

    iget-object v6, p1, Lcgc;->b:Lcet;

    iget-object v6, v6, Lcet;->j:Ljava/lang/String;

    iget-object v7, p1, Lcgc;->b:Lcet;

    iget-object v7, v7, Lcet;->k:Ljava/lang/String;

    iget-object v8, p1, Lcgc;->b:Lcet;

    iget-object v8, v8, Lcet;->h:Ljava/lang/Long;

    .line 1678
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1672
    invoke-static/range {v0 .. v9}, Lfbm;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lor;->onSuccess(Ljava/lang/Object;)V

    .line 659
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
