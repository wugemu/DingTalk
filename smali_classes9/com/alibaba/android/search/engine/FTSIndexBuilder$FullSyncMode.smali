.class public final enum Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;
.super Ljava/lang/Enum;
.source "FTSIndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FullSyncMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

.field public static final enum BatchSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

.field public static final enum ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

.field public static final enum UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;


# instance fields
.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 909
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    const-string/jumbo v1, "UnForceSync"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    .line 910
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    const-string/jumbo v1, "ForceSync"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    .line 911
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    const-string/jumbo v1, "BatchSync"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->BatchSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    .line 907
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->BatchSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->$VALUES:[Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 915
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 916
    iput p3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->mValue:I

    .line 917
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 907
    const-class v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;
    .locals 1

    .prologue
    .line 907
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->$VALUES:[Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->mValue:I

    return v0
.end method
