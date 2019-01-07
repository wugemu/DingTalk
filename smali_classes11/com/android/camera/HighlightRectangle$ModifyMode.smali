.class final enum Lcom/android/camera/HighlightRectangle$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightRectangle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HighlightRectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/HighlightRectangle$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/HighlightRectangle$ModifyMode;

.field public static final enum Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

.field public static final enum Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/camera/HighlightRectangle$ModifyMode;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HighlightRectangle$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    new-instance v0, Lcom/android/camera/HighlightRectangle$ModifyMode;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/HighlightRectangle$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/HighlightRectangle$ModifyMode;

    sget-object v1, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/HighlightRectangle$ModifyMode;->Move:Lcom/android/camera/HighlightRectangle$ModifyMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->$VALUES:[Lcom/android/camera/HighlightRectangle$ModifyMode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/HighlightRectangle$ModifyMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/camera/HighlightRectangle$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HighlightRectangle$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/HighlightRectangle$ModifyMode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->$VALUES:[Lcom/android/camera/HighlightRectangle$ModifyMode;

    invoke-virtual {v0}, [Lcom/android/camera/HighlightRectangle$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/HighlightRectangle$ModifyMode;

    return-object v0
.end method
