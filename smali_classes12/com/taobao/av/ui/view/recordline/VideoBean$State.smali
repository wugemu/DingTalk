.class public final enum Lcom/taobao/av/ui/view/recordline/VideoBean$State;
.super Ljava/lang/Enum;
.source "VideoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/av/ui/view/recordline/VideoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/av/ui/view/recordline/VideoBean$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/av/ui/view/recordline/VideoBean$State;

.field public static final enum CAPTURING:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

.field public static final enum READY:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

.field public static final enum SELECTED:Lcom/taobao/av/ui/view/recordline/VideoBean$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    const-string/jumbo v1, "CAPTURING"

    invoke-direct {v0, v1, v2}, Lcom/taobao/av/ui/view/recordline/VideoBean$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->CAPTURING:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 13
    new-instance v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/taobao/av/ui/view/recordline/VideoBean$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->READY:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 14
    new-instance v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    const-string/jumbo v1, "SELECTED"

    invoke-direct {v0, v1, v4}, Lcom/taobao/av/ui/view/recordline/VideoBean$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->SELECTED:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    sget-object v1, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->CAPTURING:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->READY:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->SELECTED:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->$VALUES:[Lcom/taobao/av/ui/view/recordline/VideoBean$State;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/av/ui/view/recordline/VideoBean$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    return-object v0
.end method

.method public static values()[Lcom/taobao/av/ui/view/recordline/VideoBean$State;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->$VALUES:[Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    invoke-virtual {v0}, [Lcom/taobao/av/ui/view/recordline/VideoBean$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    return-object v0
.end method
