.class public final enum Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuoteStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

.field public static final enum HEADER:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

.field public static final enum PREFIX:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    const-string/jumbo v1, "PREFIX"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->PREFIX:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->HEADER:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->PREFIX:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->HEADER:Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->$VALUES:[Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/Account$QuoteStyle;

    return-object v0
.end method
