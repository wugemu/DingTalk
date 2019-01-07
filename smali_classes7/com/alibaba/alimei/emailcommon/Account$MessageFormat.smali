.class public final enum Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

.field public static final enum HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

.field public static final enum TEXT:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->TEXT:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    const-string/jumbo v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->TEXT:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->HTML:Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/Account$MessageFormat;

    return-object v0
.end method
