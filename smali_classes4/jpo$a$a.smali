.class public final Ljpo$a$a;
.super Ljava/lang/Object;
.source "WML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljpo$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

.field public b:Ljpx;

.field public c:Ljpt;

.field public d:Ljqa;

.field public e:Ljpw;

.field public f:Ljpy;

.field public g:Ljpz;

.field public h:Ljps;

.field public i:Ljpr;

.field public j:Ljpq;

.field public k:Ljpp;

.field public l:Ljpu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljpo$a$a;->a:Ljava/util/Map;

    .line 207
    return-void
.end method