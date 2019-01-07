.class public final enum Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
.super Ljava/lang/Enum;
.source "ThreadPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field public static final enum HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field public static final enum IMMEDIATE:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field public static final enum LOW:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

.field public static final enum NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->LOW:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 15
    new-instance v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 19
    new-instance v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 23
    new-instance v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->IMMEDIATE:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->LOW:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->IMMEDIATE:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->$VALUES:[Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->$VALUES:[Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    return-object v0
.end method
