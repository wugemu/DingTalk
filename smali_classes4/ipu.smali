.class public Lipu;
.super Ljava/lang/Object;
.source "BaseRecordParameter4.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zimID"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lipu;->a:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lipu;->a:Ljava/lang/String;

    .line 12
    return-void
.end method
