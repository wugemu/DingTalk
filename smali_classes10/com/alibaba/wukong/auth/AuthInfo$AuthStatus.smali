.class public final enum Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;
.super Ljava/lang/Enum;
.source "AuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

.field public static final enum OFFLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

.field public static final enum ONLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->OFFLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    .line 46
    new-instance v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->ONLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    sget-object v1, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->OFFLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->ONLINE:Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->$VALUES:[Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->status:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->$VALUES:[Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;->status:I

    return v0
.end method
