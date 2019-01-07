.class public final enum Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;
.super Ljava/lang/Enum;
.source "SelectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/model/SelectModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

.field public static final enum CRM:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

.field public static final enum USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 30
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    const-string/jumbo v1, "DEPT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 31
    new-instance v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    const-string/jumbo v1, "CRM"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->CRM:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->USER:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->DEPT:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->CRM:Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->$VALUES:[Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->$VALUES:[Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/org/model/SelectModel$ModelType;

    return-object v0
.end method
