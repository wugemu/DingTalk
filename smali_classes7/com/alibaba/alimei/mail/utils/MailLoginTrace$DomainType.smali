.class public final enum Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;
.super Ljava/lang/Enum;
.source "MailLoginTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/utils/MailLoginTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DomainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum ALIMAIL:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum NETEASE_126:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum NETEASE_163:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum NETEASE_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum OTHER:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum QQ:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field public static final enum TENcENT_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "ALIMAIL"

    const-string/jumbo v2, "alimail"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->ALIMAIL:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 43
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "QQ"

    const-string/jumbo v2, "qq"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->QQ:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 44
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "TENcENT_EN"

    const-string/jumbo v2, "tencent_en"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->TENcENT_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 45
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "NETEASE_163"

    const-string/jumbo v2, "163"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_163:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 46
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "NETEASE_126"

    const-string/jumbo v2, "126"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_126:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 47
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "NETEASE_EN"

    const/4 v2, 0x5

    const-string/jumbo v3, "netease_en"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 48
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    const-string/jumbo v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->OTHER:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->ALIMAIL:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->QQ:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->TENcENT_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_163:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_126:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_EN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->OTHER:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->mValue:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->mValue:Ljava/lang/String;

    return-object v0
.end method
