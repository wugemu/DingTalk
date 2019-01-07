.class public final enum Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
.super Ljava/lang/Enum;
.source "ActionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/ActionResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

.field public static final enum ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

.field public static final enum NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

.field public static final enum OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v1, "NO_RESULT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 109
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 110
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->$VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->$VALUES:[Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    return-object v0
.end method
