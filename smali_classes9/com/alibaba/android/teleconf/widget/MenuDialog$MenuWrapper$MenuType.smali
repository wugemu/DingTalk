.class public final enum Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;
.super Ljava/lang/Enum;
.source "MenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

.field public static final enum MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

.field public static final enum MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    const-string/jumbo v1, "MENU_TYPE_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 51
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    const-string/jumbo v1, "MENU_TYPE_LIST"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_DEFAULT:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->MENU_TYPE_LIST:Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper$MenuType;

    return-object v0
.end method
