.class public Lhml;
.super Ljava/lang/Object;
.source "MiniAppInfoSPAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhml$a;
    }
.end annotation


# static fields
.field private static a:Lhml;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static declared-synchronized a()Lhml;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lhml;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhml;->a:Lhml;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lhml;

    invoke-direct {v0}, Lhml;-><init>()V

    sput-object v0, Lhml;->a:Lhml;

    .line 39
    :cond_0
    sget-object v0, Lhml;->a:Lhml;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lhml;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lhml;

    .prologue
    .line 1215
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINIAPP_INFO_KEY"

    .line 1216
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1217
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method
