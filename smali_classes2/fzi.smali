.class public final Lfzi;
.super Lfze;
.source "StatConfig.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "ap_stat"
.end annotation


# instance fields
.field public d:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "detail"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lfze;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 14
    iget v1, p0, Lfzi;->d:I

    if-ne v1, v0, :cond_0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 29
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 30
    :cond_0
    invoke-direct {p0}, Lfzi;->b()Z

    move-result v1

    .line 36
    :goto_1
    return v1

    .line 32
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lfzi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p0, v0}, Lfzi;->c(Ljava/lang/String;)Lfze;

    move-result-object p0

    .end local p0    # "this":Lfzi;
    check-cast p0, Lfzi;

    .restart local p0    # "this":Lfzi;
    goto :goto_0

    .line 36
    :cond_2
    invoke-direct {p0}, Lfzi;->b()Z

    move-result v1

    goto :goto_1
.end method
