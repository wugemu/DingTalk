.class public final enum Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
.super Ljava/lang/Enum;
.source "BindAndSettingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

.field public static final enum AP:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

.field public static final enum ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    const-string/jumbo v1, "ROUTER"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    const-string/jumbo v1, "AP"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->AP:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->AP:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->value:I

    return v0
.end method
