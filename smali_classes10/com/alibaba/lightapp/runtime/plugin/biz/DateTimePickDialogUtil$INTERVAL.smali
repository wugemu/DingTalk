.class public final enum Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
.super Ljava/lang/Enum;
.source "DateTimePickDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERVAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

.field public static final enum INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

.field public static final enum INTERVAL_TEN:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    const-string/jumbo v1, "INTERVAL_ONE"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    .line 78
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    const-string/jumbo v1, "INTERVAL_TEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->$VALUES:[Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->value:I

    .line 84
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    iget v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->value:I

    if-ne p0, v0, :cond_0

    .line 92
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->$VALUES:[Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/DateTimePickDialogUtil$INTERVAL;->value:I

    return v0
.end method
