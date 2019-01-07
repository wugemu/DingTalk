.class public Lcom/alibaba/alimei/emailcommon/helper/ContactsSdk5;
.super Luw;
.source "ContactsSdk5.java"


# static fields
.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/emailcommon/helper/ContactsSdk5;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Luw;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method
