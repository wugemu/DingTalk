.class public final enum Lcom/alibaba/wukong/im/MessageListener$DataType;
.super Ljava/lang/Enum;
.source "MessageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/MessageListener$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/MessageListener$DataType;

.field public static final enum NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

.field public static final enum RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

.field public static final enum SYNC:Lcom/alibaba/wukong/im/MessageListener$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/alibaba/wukong/im/MessageListener$DataType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageListener$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    new-instance v0, Lcom/alibaba/wukong/im/MessageListener$DataType;

    const-string/jumbo v1, "RECONNECT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/im/MessageListener$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    new-instance v0, Lcom/alibaba/wukong/im/MessageListener$DataType;

    const-string/jumbo v1, "SYNC"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/im/MessageListener$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/im/MessageListener$DataType;->SYNC:Lcom/alibaba/wukong/im/MessageListener$DataType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/MessageListener$DataType;

    sget-object v1, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/im/MessageListener$DataType;->RECONNECT:Lcom/alibaba/wukong/im/MessageListener$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/MessageListener$DataType;->SYNC:Lcom/alibaba/wukong/im/MessageListener$DataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/MessageListener$DataType;->$VALUES:[Lcom/alibaba/wukong/im/MessageListener$DataType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/MessageListener$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageListener$DataType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/MessageListener$DataType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/wukong/im/MessageListener$DataType;->$VALUES:[Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/MessageListener$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/MessageListener$DataType;

    return-object v0
.end method
