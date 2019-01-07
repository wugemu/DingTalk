.class public final enum Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollButtons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

.field public static final enum ALWAYS:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

.field public static final enum KEYBOARD_AVAILABLE:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

.field public static final enum NEVER:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    const-string/jumbo v1, "NEVER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->NEVER:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    const-string/jumbo v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->ALWAYS:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    const-string/jumbo v1, "KEYBOARD_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->KEYBOARD_AVAILABLE:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->NEVER:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->ALWAYS:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->KEYBOARD_AVAILABLE:Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/Account$ScrollButtons;

    return-object v0
.end method
