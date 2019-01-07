.class public final Lklc$f;
.super Lklc$b;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lklc$b",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lklc$f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/Uri;

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lklc$b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    .line 1439
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    return-object v0
.end method
