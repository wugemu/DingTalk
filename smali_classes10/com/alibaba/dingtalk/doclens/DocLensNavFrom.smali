.class public final enum Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
.super Ljava/lang/Enum;
.source "DocLensNavFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

.field public static final enum ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

.field public static final enum SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    const-string/jumbo v1, "ALBUM"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    const-string/jumbo v1, "SCAN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    return-object v0
.end method
