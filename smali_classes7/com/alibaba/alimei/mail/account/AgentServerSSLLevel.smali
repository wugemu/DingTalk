.class public final enum Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;
.super Ljava/lang/Enum;
.source "AgentServerSSLLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

.field public static final enum NON_SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

.field public static final enum SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

.field public static final enum UNKNOWN:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->UNKNOWN:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    .line 9
    new-instance v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    const-string/jumbo v1, "SSL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    .line 10
    new-instance v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    const-string/jumbo v1, "NON_SSL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->NON_SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    sget-object v1, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->UNKNOWN:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->NON_SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->$VALUES:[Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->$VALUES:[Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    return-object v0
.end method
