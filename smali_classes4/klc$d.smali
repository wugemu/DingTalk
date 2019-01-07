.class public final Lklc$d;
.super Lklc$b;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lklc$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lklc$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lklc$b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 443
    return-object p1
.end method
