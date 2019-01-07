.class public final Lhpu;
.super Ljava/lang/Object;
.source "DakaPopupAction.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhjr;)Lhpu;
    .locals 2
    .param p0, "model"    # Lhjr;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lhpu;

    invoke-direct {v0}, Lhpu;-><init>()V

    .line 26
    .local v0, "action":Lhpu;
    iget-object v1, p0, Lhjr;->a:Ljava/lang/String;

    iput-object v1, v0, Lhpu;->a:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lhjr;->b:Ljava/lang/String;

    iput-object v1, v0, Lhpu;->b:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lhjr;->c:Ljava/lang/String;

    iput-object v1, v0, Lhpu;->c:Ljava/lang/String;

    goto :goto_0
.end method
