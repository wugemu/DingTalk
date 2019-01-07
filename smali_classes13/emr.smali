.class public final Lemr;
.super Ljava/lang/Object;
.source "H5UrlMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lemr$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lemr;->a:Ljava/util/Map;

    .line 21
    iget-object v0, p0, Lemr;->a:Ljava/util/Map;

    const-string/jumbo v1, "/zproject/facespace.html"

    const-string/jumbo v2, "/exchange_namecard.html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lemr;->a:Ljava/util/Map;

    const-string/jumbo v1, "/zproject/profile.html"

    const-string/jumbo v2, "/user/profile.html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lemr;-><init>()V

    return-void
.end method
