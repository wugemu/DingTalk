.class public final enum Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
.super Ljava/lang/Enum;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

.field public static final enum CRAM_MD5:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

.field public static final enum PLAIN:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    const-string/jumbo v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->PLAIN:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    const-string/jumbo v1, "CRAM_MD5"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->CRAM_MD5:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->PLAIN:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->CRAM_MD5:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    return-object v0
.end method
