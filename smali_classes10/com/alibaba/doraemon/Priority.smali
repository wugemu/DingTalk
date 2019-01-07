.class public final enum Lcom/alibaba/doraemon/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/Priority;

.field public static final enum HIGH:Lcom/alibaba/doraemon/Priority;

.field public static final enum IMMEDIATE:Lcom/alibaba/doraemon/Priority;

.field public static final enum LOW:Lcom/alibaba/doraemon/Priority;

.field public static final enum NORMAL:Lcom/alibaba/doraemon/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alibaba/doraemon/Priority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    .line 19
    new-instance v0, Lcom/alibaba/doraemon/Priority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/doraemon/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    .line 25
    new-instance v0, Lcom/alibaba/doraemon/Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/doraemon/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    .line 31
    new-instance v0, Lcom/alibaba/doraemon/Priority;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/doraemon/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/doraemon/Priority;

    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/doraemon/Priority;->$VALUES:[Lcom/alibaba/doraemon/Priority;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/doraemon/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/Priority;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/doraemon/Priority;->$VALUES:[Lcom/alibaba/doraemon/Priority;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method
