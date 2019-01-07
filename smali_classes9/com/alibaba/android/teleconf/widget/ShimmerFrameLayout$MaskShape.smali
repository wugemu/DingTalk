.class public final enum Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
.super Ljava/lang/Enum;
.source "ShimmerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

.field public static final enum LINEAR:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

.field public static final enum RADIAL:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    const-string/jumbo v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->LINEAR:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .line 31
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    const-string/jumbo v1, "RADIAL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->RADIAL:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->LINEAR:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->RADIAL:Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->$VALUES:[Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->$VALUES:[Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$MaskShape;

    return-object v0
.end method
