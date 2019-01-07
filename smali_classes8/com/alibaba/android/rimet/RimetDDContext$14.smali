.class final Lcom/alibaba/android/rimet/RimetDDContext$14;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/HealthWarner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initThreadTimeHealthWarn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$14;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final robotAlarm(ILjava/util/Map;)V
    .locals 5
    .param p1, "warnCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2105
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    const/16 v0, 0x35

    if-gt p1, v0, :cond_0

    .line 2106
    const-string/jumbo v0, "power_de"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "thread long time warnCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " data:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_0
    return-void
.end method

.method public final varargs warn(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "warnCode"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2101
    return-void
.end method
