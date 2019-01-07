.class public final Llfi;
.super Llfv;
.source "nsDetector.java"


# instance fields
.field public a:Llfr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Llfv;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Llfi;->a:Llfr;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "langFlag"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llfv;-><init>(I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Llfi;->a:Llfr;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Llfi;->a:Llfr;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Llfi;->a:Llfr;

    invoke-interface {v0, p1}, Llfr;->Notify(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
