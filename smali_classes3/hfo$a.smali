.class public final Lhfo$a;
.super Ljava/lang/Object;
.source "RuntimeAppInfoCacheMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field final synthetic g:Lhfo;


# direct methods
.method private constructor <init>(Lhfo;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lhfo$a;->g:Lhfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhfo;B)V
    .locals 0
    .param p1, "x0"    # Lhfo;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lhfo$a;-><init>(Lhfo;)V

    return-void
.end method
