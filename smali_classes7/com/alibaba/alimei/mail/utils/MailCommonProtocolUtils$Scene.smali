.class public final enum Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;
.super Ljava/lang/Enum;
.source "MailCommonProtocolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

.field public static final enum LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

.field public static final enum MAIL_LIST:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    const-string/jumbo v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    .line 26
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    const-string/jumbo v1, "MAIL_LIST"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->MAIL_LIST:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->MAIL_LIST:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->$VALUES:[Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    return-object v0
.end method
