.class public Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;
.super Ljava/lang/Object;
.source "SEProtectLoaderEx.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;->a:Landroid/content/Context;

    .line 25
    return-void
.end method
