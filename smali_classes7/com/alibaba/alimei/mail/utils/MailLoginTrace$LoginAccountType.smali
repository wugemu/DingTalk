.class public final enum Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;
.super Ljava/lang/Enum;
.source "MailLoginTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/utils/MailLoginTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field public static final enum ALI:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field public static final enum EXCAHNGE:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field public static final enum IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field public static final enum POP3:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field public static final enum UNKNOWN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->UNKNOWN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 25
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    const-string/jumbo v1, "ALI"

    const-string/jumbo v2, "ali"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->ALI:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 26
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    const-string/jumbo v1, "POP3"

    const-string/jumbo v2, "pop3"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->POP3:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 27
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    const-string/jumbo v1, "EXCAHNGE"

    const-string/jumbo v2, "exchange"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->EXCAHNGE:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 28
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    const-string/jumbo v1, "IMAP"

    const-string/jumbo v2, "imap"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->UNKNOWN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->ALI:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->POP3:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->EXCAHNGE:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->mValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->mValue:Ljava/lang/String;

    return-object v0
.end method
