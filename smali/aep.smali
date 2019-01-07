.class public final Laep;
.super Ljava/lang/Object;
.source "CainiaoMailHelper.java"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "admin@dingtalk.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "kqadmin@dingtalk.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "zsxyadmin@dingtalk.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "cainiaoadmin@dingtalk.com"

    aput-object v2, v0, v1

    sput-object v0, Laep;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v2, p0, Laep;->a:Z

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "inWhiteList":Z
    sget-object v3, Laep;->b:[Ljava/lang/String;

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 28
    .local v1, "whiteAddress":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    const/4 v0, 0x1

    .line 34
    .end local v1    # "whiteAddress":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    const/4 v2, 0x1

    iput-boolean v2, p0, Laep;->a:Z

    .line 37
    :cond_1
    return-void

    .line 27
    .restart local v1    # "whiteAddress":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
