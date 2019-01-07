.class public final Lezh;
.super Ljava/lang/Object;
.source "UrlContants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "https://h5.dingtalk.com/crm/client_data.html?corpId=%s&orgName=%s&appId=%s&agentId=%d"

    sput-object v0, Lezh;->a:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "https://h5.dingtalk.com/crm/customer_edit.html?"

    sput-object v0, Lezh;->b:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "https://crm-app.dingtalk.com/client_info.html?"

    sput-object v0, Lezh;->c:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "https://oa.dingtalk.com/personCheckFace.html"

    sput-object v0, Lezh;->d:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "https://h5.dingtalk.com/personalFaceAuth/index.html"

    sput-object v0, Lezh;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
