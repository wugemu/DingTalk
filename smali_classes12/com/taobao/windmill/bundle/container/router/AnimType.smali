.class public final enum Lcom/taobao/windmill/bundle/container/router/AnimType;
.super Ljava/lang/Enum;
.source "AnimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/router/AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/router/AnimType;

.field public static final enum NULL:Lcom/taobao/windmill/bundle/container/router/AnimType;

.field public static final enum POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

.field public static final enum PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/AnimType;

    const-string/jumbo v1, "PUSH"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/router/AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/router/AnimType;

    const-string/jumbo v1, "POP"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/router/AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/router/AnimType;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/windmill/bundle/container/router/AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->NULL:Lcom/taobao/windmill/bundle/container/router/AnimType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/router/AnimType;

    sget-object v1, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/bundle/container/router/AnimType;->POP:Lcom/taobao/windmill/bundle/container/router/AnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/windmill/bundle/container/router/AnimType;->NULL:Lcom/taobao/windmill/bundle/container/router/AnimType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->$VALUES:[Lcom/taobao/windmill/bundle/container/router/AnimType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/router/AnimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/taobao/windmill/bundle/container/router/AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/router/AnimType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/router/AnimType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/taobao/windmill/bundle/container/router/AnimType;->$VALUES:[Lcom/taobao/windmill/bundle/container/router/AnimType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/router/AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/router/AnimType;

    return-object v0
.end method
