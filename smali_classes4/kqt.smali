.class public final Lkqt;
.super Lkqp;
.source "ContentTypeFieldImpl.java"

# interfaces
.implements Lkqi;


# static fields
.field static final c:Lkqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqx",
            "<",
            "Lkqt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lkqt$1;

    invoke-direct {v0}, Lkqt$1;-><init>()V

    sput-object v0, Lkqt;->c:Lkqx;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lksy;
    .param p4, "monitor"    # Lkqa;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lkqp;-><init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkqt;->d:Z

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lkqt;->e:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkqt;->f:Ljava/util/Map;

    .line 47
    return-void
.end method
