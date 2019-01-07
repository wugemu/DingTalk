.class public final enum Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
.super Ljava/lang/Enum;
.source "AutoTryTaskPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoTryFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

.field public static final enum Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

.field public static final enum Remain:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    const-string/jumbo v1, "Delete"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    .line 70
    new-instance v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    const-string/jumbo v1, "Remain"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Remain:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Remain:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->$VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->$VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    return-object v0
.end method
