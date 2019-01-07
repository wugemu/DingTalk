.class public final enum Lcom/alibaba/doraemon/image/memory/MemoryTrimType;
.super Ljava/lang/Enum;
.source "MemoryTrimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/image/memory/MemoryTrimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

.field public static final enum OnAppBackgrounded:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

.field public static final enum OnCloseToDalvikHeapLimit:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInBackground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

.field public static final enum OnSystemLowMemoryWhileAppInForeground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;


# instance fields
.field private mSuggestedTrimRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 22
    new-instance v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    const-string/jumbo v1, "OnCloseToDalvikHeapLimit"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    .line 25
    new-instance v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    const-string/jumbo v1, "OnSystemLowMemoryWhileAppInForeground"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    .line 28
    new-instance v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    const-string/jumbo v1, "OnSystemLowMemoryWhileAppInBackground"

    invoke-direct {v0, v1, v8, v4, v5}, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    .line 31
    new-instance v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    const-string/jumbo v1, "OnAppBackgrounded"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    sget-object v1, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInForeground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnSystemLowMemoryWhileAppInBackground:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnAppBackgrounded:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->$VALUES:[Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 1
    .param p3, "suggestedTrimRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-wide p3, p0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/image/memory/MemoryTrimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/image/memory/MemoryTrimType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->$VALUES:[Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    return-object v0
.end method


# virtual methods
.method public final getSuggestedTrimRatio()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->mSuggestedTrimRatio:D

    return-wide v0
.end method
