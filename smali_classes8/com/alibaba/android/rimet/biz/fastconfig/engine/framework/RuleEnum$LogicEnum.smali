.class public final enum Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
.super Ljava/lang/Enum;
.source "RuleEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogicEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

.field public static final enum AND:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

.field public static final enum OR:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    const-string/jumbo v1, "OR"

    const-string/jumbo v2, "or"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->OR:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    const-string/jumbo v1, "AND"

    const-string/jumbo v2, "and"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->AND:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->OR:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->AND:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getValidLogic(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    .locals 6
    .param p0, "logic"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 1014
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 33
    if-eqz v2, :cond_1

    move-object v0, v1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    invoke-static {}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 38
    .local v0, "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    :cond_2
    move-object v0, v1

    .line 43
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    return-object v0
.end method
