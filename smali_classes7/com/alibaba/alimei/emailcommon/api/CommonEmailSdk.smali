.class public Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;
.super Ljava/lang/Object;
.source "CommonEmailSdk.java"


# static fields
.field public static DEBUG:Z = false

.field public static final IDENTITY_HEADER:Ljava/lang/String; = "alimei"

.field public static INBOX:Ljava/lang/String;

.field public static LOG_TAG:Ljava/lang/String;

.field public static app:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 13
    const-string/jumbo v0, "CommonEmailSdk"

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "INBOX"

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->INBOX:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->getInstance()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->getApiInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sput-object p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    .line 32
    invoke-static {p0}, Lut;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method
