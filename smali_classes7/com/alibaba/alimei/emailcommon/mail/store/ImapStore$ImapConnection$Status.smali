.class public final enum Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;
.super Ljava/lang/Enum;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum AUTHENTICATE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum AUTH_COMPLETE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum CHECK_CAPABILITY1:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum GET_CAPABILITY:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum NOT_CONNECTED:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum REPORT_ID:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum STARTTLS:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field public static final enum STARTTLS_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2965
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->NOT_CONNECTED:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2966
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2967
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "SSL_CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2968
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "CHECK_CAPABILITY1"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CHECK_CAPABILITY1:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2969
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "GET_CAPABILITY"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->GET_CAPABILITY:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2970
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "STARTTLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2971
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "STARTTLS_CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2972
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "REPORT_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->REPORT_ID:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2973
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "AUTHENTICATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTHENTICATE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2974
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    const-string/jumbo v1, "AUTH_COMPLETE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTH_COMPLETE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 2964
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->NOT_CONNECTED:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CHECK_CAPABILITY1:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->GET_CAPABILITY:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->REPORT_ID:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTHENTICATE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTH_COMPLETE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

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
    .line 2964
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2964
    const-class v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;
    .locals 1

    .prologue
    .line 2964
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->$VALUES:[Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    return-object v0
.end method
