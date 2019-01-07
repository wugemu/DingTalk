.class final Lbjx$1;
.super Ljava/lang/Object;
.source "DingParentUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/utils/FetchMaxLevel;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/utils/FetchMaxLevel;Lcma;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbjx$1;->a:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    iput-object p2, p0, Lbjx$1;->b:Lcma;

    iput-object p3, p0, Lbjx$1;->c:Ljava/lang/String;

    iput-wide p4, p0, Lbjx$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 89
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1092
    if-nez p1, :cond_0

    iget-object v0, p0, Lbjx$1;->a:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->MEMORY:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->getLevel()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1093
    :cond_0
    invoke-static {p1}, Lbkh;->G(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lbjx$1;->b:Lcma;

    invoke-static {}, Lbjx;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lbjx$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 1095
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-wide v2, p0, Lbjx$1;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbjx$1$1;

    invoke-direct {v2, p0}, Lbjx$1$1;-><init>(Lbjx$1;)V

    invoke-virtual {v0, v1, v2}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingUtil]getParentDingName getDingFromCache failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lbjx$1;->b:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 138
    return-void
.end method
