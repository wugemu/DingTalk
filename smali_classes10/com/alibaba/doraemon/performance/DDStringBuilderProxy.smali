.class public Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;
.super Ljava/lang/Object;
.source "DDStringBuilderProxy.java"


# static fields
.field private static final INIT_CAPACITY:I = 0x60

.field private static final INIT_CAPACITY_SHARED:I = 0x20

.field private static mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/performance/SoftReferenceProxy",
            "<",
            "Lcom/alibaba/doraemon/performance/DDStringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 21
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 22
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->makeSureSoftProxy()V

    .line 24
    sget-object v1, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 26
    .local v0, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setShared(Z)V

    .line 33
    .end local v0    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    return-object v0

    .line 30
    .restart local v0    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .end local v0    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-direct {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    goto :goto_0
.end method

.method private static makeSureSoftProxy()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;-><init>()V

    .line 47
    sput-object v0, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->mStringBuilder:Lcom/alibaba/doraemon/performance/SoftReferenceProxy;

    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy$1;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->setCreator(Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;)V

    .line 68
    :cond_0
    monitor-exit v1

    .line 69
    :cond_1
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
