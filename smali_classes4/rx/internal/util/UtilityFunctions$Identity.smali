.class public final enum Lrx/internal/util/UtilityFunctions$Identity;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Llhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/UtilityFunctions$Identity;",
        ">;",
        "Llhk",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/UtilityFunctions$Identity;

.field public static final enum INSTANCE:Lrx/internal/util/UtilityFunctions$Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lrx/internal/util/UtilityFunctions$Identity;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lrx/internal/util/UtilityFunctions$Identity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/UtilityFunctions$Identity;->INSTANCE:Lrx/internal/util/UtilityFunctions$Identity;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/UtilityFunctions$Identity;

    sget-object v1, Lrx/internal/util/UtilityFunctions$Identity;->INSTANCE:Lrx/internal/util/UtilityFunctions$Identity;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/UtilityFunctions$Identity;->$VALUES:[Lrx/internal/util/UtilityFunctions$Identity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/UtilityFunctions$Identity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lrx/internal/util/UtilityFunctions$Identity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/UtilityFunctions$Identity;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/UtilityFunctions$Identity;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lrx/internal/util/UtilityFunctions$Identity;->$VALUES:[Lrx/internal/util/UtilityFunctions$Identity;

    invoke-virtual {v0}, [Lrx/internal/util/UtilityFunctions$Identity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/UtilityFunctions$Identity;

    return-object v0
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    return-object p1
.end method
