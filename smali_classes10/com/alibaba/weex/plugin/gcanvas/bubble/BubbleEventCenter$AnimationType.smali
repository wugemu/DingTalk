.class public final enum Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
.super Ljava/lang/Enum;
.source "BubbleEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

.field public static final enum EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

.field public static final enum EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

.field public static final enum MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

.field public static final enum MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

.field public static final enum ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    const-string/jumbo v1, "MoveLeft"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    const-string/jumbo v1, "MoveRight"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    const-string/jumbo v1, "EdgeBounceLeft"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    const-string/jumbo v1, "EdgeBounceRight"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    const-string/jumbo v1, "ReplaceScale"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->$VALUES:[Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->$VALUES:[Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-virtual {v0}, [Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    return-object v0
.end method
