.class public final Lipv;
.super Lipu;
.source "RecordParameter4.java"


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zimID"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lipu;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lipv;->b:Z

    .line 9
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lipv;->c:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lipv;->d:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "zimID"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lipu;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lipv;->b:Z

    .line 9
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lipv;->c:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lipv;->d:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lipv;->b:Z

    .line 27
    iput-object p3, p0, Lipv;->c:Ljava/lang/String;

    .line 28
    return-void
.end method
