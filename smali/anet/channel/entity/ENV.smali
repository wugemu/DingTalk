.class public final enum Lanet/channel/entity/ENV;
.super Ljava/lang/Enum;
.source "ENV.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanet/channel/entity/ENV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/entity/ENV;

.field public static final enum ONLINE:Lanet/channel/entity/ENV;

.field public static final enum PREPARE:Lanet/channel/entity/ENV;

.field public static final enum TEST:Lanet/channel/entity/ENV;


# instance fields
.field private envMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lanet/channel/entity/ENV;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v2, v2}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const-string/jumbo v1, "PREPARE"

    invoke-direct {v0, v1, v3, v3}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v4, v4}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lanet/channel/entity/ENV;

    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    aput-object v1, v0, v2

    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    aput-object v1, v0, v3

    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    aput-object v1, v0, v4

    sput-object v0, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "envMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lanet/channel/entity/ENV;->envMode:I

    .line 30
    return-void
.end method

.method public static valueOf(I)Lanet/channel/entity/ENV;
    .locals 1
    .param p0, "envMode"    # I

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 24
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/entity/ENV;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lanet/channel/entity/ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public static values()[Lanet/channel/entity/ENV;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    invoke-virtual {v0}, [Lanet/channel/entity/ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/entity/ENV;

    return-object v0
.end method


# virtual methods
.method public final getEnvMode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lanet/channel/entity/ENV;->envMode:I

    return v0
.end method

.method public final setEnvMode(I)V
    .locals 0
    .param p1, "envMode"    # I

    .prologue
    .line 17
    iput p1, p0, Lanet/channel/entity/ENV;->envMode:I

    .line 18
    return-void
.end method
